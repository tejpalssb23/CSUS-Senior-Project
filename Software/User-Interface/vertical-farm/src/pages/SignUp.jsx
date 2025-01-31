import { useState } from "react";
import { AiFillEyeInvisible, AiFillEye } from "react-icons/ai";
import { Link } from "react-router-dom";
import OAuth from "../components/OAuth";
import { createUserWithEmailAndPassword, getAuth, updateProfile } from "firebase/auth" 
import { db } from "../firebase-config";
import { doc, serverTimestamp, setDoc } from "firebase/firestore";
import { useNavigate } from "react-router-dom";
import { toast } from "react-toastify";
import Logo from "../assets/svg/Logo.svg"

export default function SignUp() {
  const [showPassword, setShowPassword] = useState(false);
  const navigate = useNavigate();

  const [formData, setFormData] = useState({
    //intial values for form data
    fullname: "",
    email: "",
    password: "",
  });
  //destructure form data
  const { email, password, fullname } = formData;
  function onChange(e) {
    setFormData((prevState) => ({
      ...prevState,
      [e.target.id]: e.target.value,
    }));
  }

  async function onSubmit(e) {
    e.preventDefault(); //prevent refresh when sign up button is clicked
    try {
      const auth = getAuth();
      const userCredential = await createUserWithEmailAndPassword(auth, email, password);
      updateProfile(auth.currentUser, {
        displayName: fullname
      })
      const user = userCredential.user;
      const formDataCopy = {...formData};
      delete formDataCopy.password;
      formDataCopy.timeStamp = serverTimestamp();
      
      //Create a user collection with their data
      await setDoc(doc(db, "Users", user.uid), formDataCopy);
      toast.success("Sign Up successful!");
      intializeSensorSettings(auth.currentUser.uid);
      navigate("/");

    } catch (error) {
      toast.error("Something went wrong with the registration! Please try again.");
    }
  }

  async function intializeSensorSettings(UserUID) {
    const CurrentDocRef = doc(db, 'Users', UserUID, 'UserSettings', 'Settings');
    const data = {
        Light1: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 24,
            StartTime: '08:00',
            EndTime: '18:00',
            AutomationStatus: 0
        },
        Light2: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 25,
            StartTime: '08:00',
            EndTime: '18:00',
            AutomationStatus: 0
        },
        Pump1: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 16,
            ThresholdValue: 50,
            AutomationStatus: 0
        },
        Pump2: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 17,
            ThresholdValue: 50,
            AutomationStatus: 0
        },
        Pump3: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 22,
            ThresholdValue: 50,
            AutomationStatus: 0
        },
        Pump4: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 23,
            ThresholdValue: 50,
            AutomationStatus: 0
        },
        Heat: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 26,
            ThresholdValue: 50,
            AutomationStatus: 0
        },
        Fan: {
            ButtonStatus: 0,
            GPIOStatus: 0,
            GPIO: 27,
            ThresholdValue: 70,
            AutomationStatus: 0
        }

    };
    await setDoc(CurrentDocRef, data);
    console.log("Settings are set");
}

  return (
    <section>
      <h1 className="text-3xl text-center mt-6 font-bold">Sign Up</h1>
      <div className="flex flex-col justify-center items-center px-20 py-12 max-w-2sm mx-auto">
        <div>
          <img
            src={Logo}
            alt="logo"
            className="h-10"
          />
        </div>
        <div className="w-full md:w-[67%] lg:w-[40%] pt-5">
          <form onSubmit={onSubmit}>
            <input
              type="text"
              id="fullname"
              value={fullname}
              onChange={onChange}
              placeholder="Full Name"
              className="w-full px-4 py-2 mb-6 text-xl text-gray-700 bg-white border-gray-300 rounded-lg transition ease-in-out"
            />

            <input
              type="email"
              id="email"
              value={email}
              onChange={onChange}
              placeholder="Email Address"
              className="w-full px-4 py-2 mb-6 text-xl text-gray-700 bg-white border-gray-300 rounded-lg transition ease-in-out"
            />

            <div className="relative mb-6">
              <input
                type={showPassword ? "text" : "password"}
                id="password"
                value={password}
                onChange={onChange}
                placeholder="Password"
                className="w-full px-4 py-2 text-xl text-gray-700 bg-white border-gray-300 rounded-lg transition ease-in-out"
              />
              {showPassword ? (
                <AiFillEyeInvisible
                  className="absolute right-3 top-3 text-xl cursor-pointer"
                  onClick={() => setShowPassword((prevState) => !prevState)}
                />
              ) : (
                <AiFillEye
                  className="absolute right-3 top-3 text-xl cursor-pointer"
                  onClick={() => setShowPassword((prevState) => !prevState)}
                />
              )}
            </div>

            <div className="flex justify-between whitespace-nowrap text-sm sm:text-lg">
              <p className="mb-6">
                Have an account?
                <Link
                  to="/sign-in"
                  className="text-red-600 hover:text-red-800 ml-1"
                >
                  Sign In
                </Link>
              </p>
              <p>
                <Link
                  to="/forgot-password"
                  className="text-blue-600 hover:text-blue-800"
                >
                  Forgot Password?
                </Link>
              </p>
            </div>

            <button
              className="w-full bg-blue-600 text-white px-7 py-3 text-sm font-medium rounded-lg shadow-md hover:bg-blue-700 transition duration-150 ease-in-out hover:shadow-lg active:bg-blue-800"
              type="submit"
            >
              SIGN UP
            </button>

            <div className="flex my-4 items-center before:border-t before:flex-1  before:border-gray-300 after:border-t after:flex-1  after:border-gray-300">
              <p className="text-center font-semibold mx-4">OR</p>
            </div>

            <OAuth />
          </form>
        </div>
      </div>
    </section>
  );
}
