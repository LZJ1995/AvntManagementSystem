package org.gac.lzj.avnt.utils;

public class LoginResult {

    private boolean issuccess;
    private String errorMsg;
    public boolean isSuccess() {
        return issuccess;
    }
    public void setSuccess(boolean success) {
        this.issuccess = success;
    }
    public String getErrorMsg() {
        return errorMsg;
    }
    public void setErrorMsg(String errorMsg) {
        this.errorMsg = errorMsg;
    }


}