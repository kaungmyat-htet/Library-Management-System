module Library.Management.System {
    requires javafx.fxml;
    requires javafx.controls;
    requires java.sql;
    requires javafx.graphics;

    opens com.library.controller;
    opens com.library.view;
    opens com.library.model;
    opens com.library;

    exports com.library.model;
}