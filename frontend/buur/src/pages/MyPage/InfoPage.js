import React, { useState, useRef } from "react";
import axios from "axios";
import MyPageBackHeader from "../../components/MyPage/MyPageBackHeader";
import Button from "@mui/material/Button";
import FormControl from "@mui/material/FormControl";
import Visibility from "@mui/icons-material/Visibility";
import VisibilityOff from "@mui/icons-material/VisibilityOff";
import OutlinedInput from "@mui/material/OutlinedInput";
import InputAdornment from "@mui/material/InputAdornment";
import IconButton from "@mui/material/IconButton";
import AddCircleIcon from "@mui/icons-material/AddCircle";
import FormHelperText from "@mui/material/FormHelperText";
import store from "../../store";
import { ADD_USERINFO } from "../../actions/ActionTypes";
import "../../styles/userinfo.css";

const InfoPage = ({ location }) => {
  const [values, setValues] = React.useState({
    password: "",
    showPassword: false,
    newPassword: "",
    showNewPassword: false,
    confirmPassword: "",
    showConfirmPassword: false,
  });
  const [image, setImage] = useState(location.state.image.image);
  const username = location.state.username.username;
  const useremail = location.state.useremail.useremail;

  const handleChange = (prop) => (event) => {
    setValues({ ...values, [prop]: event.target.value });
  };

  const handleClickShowPassword = () => {
    setValues({
      ...values,
      showPassword: !values.showPassword,
    });
  };

  const handleClickShowNewPassword = () => {
    setValues({
      ...values,
      showNewPassword: !values.showNewPassword,
    });
  };

  const handleClickShowConfirmPassword = () => {
    setValues({
      ...values,
      showConfirmPassword: !values.showConfirmPassword,
    });
  };

  const handleMouseDownPassword = (event) => {
    event.preventDefault();
  };

  const handleMouseDownNewPassword = (event) => {
    event.preventDefault();
  };

  const onLoadFile = (event) => {
    event.preventDefault();
    const file = event.target.files[0];
    const formdata = new FormData();
    formdata.append("userProfile", file);
    axios({
      method: "put",
      url: "https://j6b102.p.ssafy.io/api-v1/user/profile",
      data: formdata,
      headers: {
        "x-auth-token": localStorage.getItem("jwt"),
        "Content-Type": "multipart/form-data",
      },
    })
      .then((res) => {
        axios
          .get("https://j6b102.p.ssafy.io/api-v1/user/info", {
            headers: {
              "x-auth-token": localStorage.getItem("jwt"),
            },
          })
          .then((res) => {
            setImage(res.data.userProfile);
            store.dispatch({ type: ADD_USERINFO, data: res.data });
          })
      })
  };

  const imageInput = useRef();

  const onClickAdd = () => {
    imageInput.current.click();
  };

  const changePw = () => {
    axios({
      method: "put",
      url: "https://j6b102.p.ssafy.io/api-v1/user/password",
      data: {
        newPassword: values.confirmPassword,
        originPassword: values.password,
      },
      headers: {
        "x-auth-token": localStorage.getItem("jwt"),
      },
    })
      .then((res) => {
        alert("??????????????? ?????????????????????.");
      })
      .catch((err) => {
        alert("?????? ??????????????? ????????????.");
      });
  };

  function canChange() {
    if (
      values.newPassword === values.confirmPassword &&
      values.newPassword &&
      values.password
    ) {
      return (
        <Button
          variant="contained"
          className="password-change-btn"
          onClick={() => changePw()}
        >
          ???????????? ????????????
        </Button>
      );
    } else {
      return (
        <Button variant="contained" className="password-change-btn" disabled>
          ???????????? ????????????
        </Button>
      );
    }
  }

  const validation = () => {
    if (0 < values.password.length && values.password.length < 8) {
      return true;
    } else {
      return false;
    }
  };

  const newValidation = () => {
    if (0 < values.newPassword.length && values.newPassword.length < 8) {
      return true;
    } else {
      return false;
    }
  };

  const confirmValidation = () => {
    if (
      values.newPassword !== values.confirmPassword &&
      values.confirmPassword
    ) {
      return true;
    } else {
      return false;
    }
  };

  const NewPasswordHelperText = () => {
    const helperText = React.useMemo(() => {
      if (0 < values.newPassword.length && values.newPassword.length < 8) {
        return "8??? ?????? ??????????????????";
      }
      return "";
    }, []);

    return <FormHelperText>{helperText}</FormHelperText>;
  };

  const ConfirmPasswordHelperText = () => {
    const helperText = React.useMemo(() => {
      if (
        values.newPassword !== values.confirmPassword &&
        values.confirmPassword
      ) {
        return "??????????????? ????????????";
      }

      return "";
    }, []);

    return <FormHelperText>{helperText}</FormHelperText>;
  };

  const MyHelperText = () => {
    const helperText = React.useMemo(() => {
      if (0 < values.password.length && values.password.length < 8) {
        return "8??? ?????? ??????????????????";
      }
      return "";
    }, []);

    return <FormHelperText>{helperText}</FormHelperText>;
  };

  return (
    <div className="info-page">
      <MyPageBackHeader pageInfo="??? ?????? ??????" />
      <div className="info-page-body">
        <div className="info-img-div">
          <img
            src={`data:image/png;base64,${image}`}
            alt="????????? ??????"
            className="profile-img"
          />
          {username}
          <AddCircleIcon
            className="profile-change-btn"
            sx={{ color: "#E9B940" }}
            onClick={onClickAdd}
          />
          <input
            type="file"
            accpet="img/*"
            onChange={onLoadFile}
            style={{ display: "none" }}
            ref={imageInput}
          />
        </div>
        <div className="input-list-container">
          <div className="info-input-first-div">
            <span className="info-email">?????????</span>
            <span>{useremail}</span>
          </div>
          <div className="info-input-div">
            <span className="info-input-text">?????? ????????????</span>
            <FormControl sx={{ m: 1, width: "190px" }} variant="outlined">
              <OutlinedInput
                type={values.showPassword ? "text" : "password"}
                value={values.password}
                onChange={handleChange("password")}
                error={validation()}
                size="small"
                endAdornment={
                  <InputAdornment position="end">
                    <IconButton
                      onClick={handleClickShowPassword}
                      onMouseDown={handleMouseDownPassword}
                      edge="end"
                    >
                      {values.showPassword ? <VisibilityOff /> : <Visibility />}
                    </IconButton>
                  </InputAdornment>
                }
              />
              <MyHelperText />
            </FormControl>
          </div>
          <div className="info-input-div">
            <span className="info-input-text">?????? ????????????</span>
            <FormControl sx={{ m: 1, width: "190px" }} variant="outlined">
              <OutlinedInput
                id="outlined-adornment-password"
                type={values.showNewPassword ? "text" : "password"}
                size="small"
                value={values.newPassword}
                onChange={handleChange("newPassword")}
                error={newValidation()}
                endAdornment={
                  <InputAdornment position="end">
                    <IconButton
                      aria-label="toggle newpassword visibility"
                      onClick={handleClickShowNewPassword}
                      onMouseDown={handleMouseDownNewPassword}
                      edge="end"
                    >
                      {values.showNewPassword ? (
                        <VisibilityOff />
                      ) : (
                        <Visibility />
                      )}
                    </IconButton>
                  </InputAdornment>
                }
              />
              <NewPasswordHelperText />
            </FormControl>
          </div>
          <div className="info-input-div">
            <span className="info-input-text">???????????? ??????</span>
            <FormControl sx={{ m: 1, width: "190px" }} variant="outlined">
              <OutlinedInput
                type={values.showConfirmPassword ? "text" : "password"}
                value={values.confirmPassword}
                onChange={handleChange("confirmPassword")}
                error={confirmValidation()}
                size="small"
                endAdornment={
                  <InputAdornment position="end">
                    <IconButton
                      aria-label="toggle password visibility"
                      onClick={handleClickShowConfirmPassword}
                      onMouseDown={handleMouseDownPassword}
                      edge="end"
                    >
                      {values.showConfirmPassword ? (
                        <VisibilityOff />
                      ) : (
                        <Visibility />
                      )}
                    </IconButton>
                  </InputAdornment>
                }
              />
              <ConfirmPasswordHelperText />
            </FormControl>
          </div>
        </div>
        <div className="password-change-div">{canChange()}</div>
      </div>
    </div>
  );
};

export default InfoPage;
