package com.library.controller;

import com.library.model.Account;
import com.library.view.ViewFactory;
import javafx.event.ActionEvent;
import javafx.fxml.FXML;
import javafx.scene.control.*;

public class LoginWindowController extends BaseController{
    public LoginWindowController(ViewFactory viewFactory, String fxmlName) {
        super(viewFactory, fxmlName);
    }

    @FXML
    private TextField idTextField;

    @FXML
    private TextField pwdTextField;

    @FXML
    void cancelButtonAction(ActionEvent event) {
        System.out.println("Cancel Button Clicked");
    }

    @FXML
    void loginButtonAction(ActionEvent event) {
        System.out.println("Login Button Clicked");

        String id, password;
        id = idTextField.getText();
        password = pwdTextField.getText();

        Account loginAccount = new Account(id, password);
        boolean isSuccess = loginAccount.login();
        if (isSuccess) {
            System.out.println("Yay! Change to next Window..");
        } else {
            System.out.println("Sorry! Please check again.");
        }
    }
}
