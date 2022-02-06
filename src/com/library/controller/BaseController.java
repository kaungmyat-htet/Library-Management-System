package com.library.controller;

import com.library.view.ViewFactory;

public class BaseController {
    protected ViewFactory viewFactory;
    protected String fxmlName;

    public BaseController(ViewFactory viewFactory, String fxmlName) {
        this.viewFactory = viewFactory;
        this.fxmlName = fxmlName;
    }

    public String getFxmlName() {
        return this.fxmlName;
    }
}
