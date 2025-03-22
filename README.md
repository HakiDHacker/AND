/* 1. Android App to Calculate Area of a Circle */
// MainActivity.java
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        EditText radiusInput = findViewById(R.id.radiusInput);
        Button calculateButton = findViewById(R.id.calculateButton);
        TextView resultView = findViewById(R.id.resultView);

        calculateButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String radiusStr = radiusInput.getText().toString();
                if (!radiusStr.isEmpty()) {
                    double radius = Double.parseDouble(radiusStr);
                    double area = Math.PI * radius * radius;
                    resultView.setText("Area: " + area);
                } else {
                    resultView.setText("Please enter a radius");
                }
            }
        });
    }
}

ACTIVITYMAIN_XML
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:padding="20dp">

    <EditText
        android:id="@+id/radiusInput"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="Enter Radius"
        android:inputType="numberDecimal"/>

    <Button
        android:id="@+id/calculateButton"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Calculate Area"/>

    <TextView
        android:id="@+id/resultText"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="Area will be displayed here"
        android:textSize="18sp"/>

</LinearLayout>

2. Area of a Rectangle App
Code (MainActivity.java)
package com.example.areaofrectangle;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    EditText lengthInput, widthInput;
    Button calculateButton;
    TextView resultText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        lengthInput = findViewById(R.id.lengthInput);
        widthInput = findViewById(R.id.widthInput);
        calculateButton = findViewById(R.id.calculateButton);
        resultText = findViewById(R.id.resultText);

        calculateButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String lengthStr = lengthInput.getText().toString();
                String widthStr = widthInput.getText().toString();

                if (!lengthStr.isEmpty() && !widthStr.isEmpty()) {
                    double length = Double.parseDouble(lengthStr);
                    double width = Double.parseDouble(widthStr);
                    double area = length * width;
                    resultText.setText("Area: " + area);
                } else {
                    resultText.setText("Enter valid values");
                }
            }
        });
    }
}
Layout (activity_main.xml)
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:padding="20dp">

    <EditText
        android:id="@+id/lengthInput"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="Enter Length"
        android:inputType="numberDecimal"/>

    <EditText
        android:id="@+id/widthInput"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="Enter Width"
        android:inputType="numberDecimal"/>

    <Button
        android:id="@+id/calculateButton"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Calculate Area"/>

    <TextView
        android:id="@+id/resultText"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="Area will be displayed here"
        android:textSize="18sp"/>

</LinearLayout>

3. Area of a Square App
Code (MainActivity.java)
package com.example.areaofsquare;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;

public class MainActivity extends AppCompatActivity {
    EditText sideInput;
    Button calculateButton;
    TextView resultText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        sideInput = findViewById(R.id.sideInput);
        calculateButton = findViewById(R.id.calculateButton);
        resultText = findViewById(R.id.resultText);

        calculateButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String sideStr = sideInput.getText().toString();
                if (!sideStr.isEmpty()) {
                    double side = Double.parseDouble(sideStr);
                    double area = side * side;
                    resultText.setText("Area: " + area);
                } else {
                    resultText.setText("Enter a valid side length");
                }
            }
        });
    }
}
Layout (activity_main.xml)
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:padding="20dp">

    <EditText
        android:id="@+id/sideInput"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="Enter Side Length"
        android:inputType="numberDecimal"/>

    <Button
        android:id="@+id/calculateButton"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Calculate Area"/>

    <TextView
        android:id="@+id/resultText"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="Area will be displayed here"
        android:textSize="18sp"/>

</LinearLayout>

4. Login Screen with Validation
Code (MainActivity.java)
package com.example.loginscreen;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    EditText usernameInput, passwordInput;
    Button loginButton;
    TextView errorText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        usernameInput = findViewById(R.id.usernameInput);
        passwordInput = findViewById(R.id.passwordInput);
        loginButton = findViewById(R.id.loginButton);
        errorText = findViewById(R.id.errorText);

        loginButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String username = usernameInput.getText().toString();
                String password = passwordInput.getText().toString();

                if (username.isEmpty() || password.isEmpty()) {
                    errorText.setText("Fields cannot be empty!");
                } else {
                    errorText.setText("");
                    Toast.makeText(MainActivity.this, "Login Successful!", Toast.LENGTH_SHORT).show();
                }
            }
        });
    }
}

Layout (activity_main.xml)
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:padding="20dp">

    <EditText
        android:id="@+id/usernameInput"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="Enter Username"
        android:inputType="text"/>

    <EditText
        android:id="@+id/passwordInput"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="Enter Password"
        android:inputType="textPassword"/>

    <Button
        android:id="@+id/loginButton"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Login"/>

    <TextView
        android:id="@+id/errorText"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text=""
        android:textColor="#FF0000"/>

</LinearLayout>

5. Registration Form App
Code (MainActivity.java)
package com.example.registrationform;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.TextView;
import android.widget.Toast;

public class MainActivity extends AppCompatActivity {
    EditText usernameInput, emailInput, passwordInput;
    RadioGroup genderGroup;
    Button submitButton;
    TextView errorText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        usernameInput = findViewById(R.id.usernameInput);
        emailInput = findViewById(R.id.emailInput);
        passwordInput = findViewById(R.id.passwordInput);
        genderGroup = findViewById(R.id.genderGroup);
        submitButton = findViewById(R.id.submitButton);
        errorText = findViewById(R.id.errorText);

        submitButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                String username = usernameInput.getText().toString();
                String email = emailInput.getText().toString();
                String password = passwordInput.getText().toString();
                int selectedGenderId = genderGroup.getCheckedRadioButtonId();

                if (username.isEmpty() || email.isEmpty() || password.isEmpty() || selectedGenderId == -1) {
                    errorText.setText("All fields must be filled!");
                } else {
                    errorText.setText("");
                    Toast.makeText(MainActivity.this, "Registration Successful!", Toast.LENGTH_SHORT).show();
                }
            }
        });
    }
}

Layout (activity_main.xml)
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:padding="20dp">

    <EditText
        android:id="@+id/usernameInput"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="Enter Username"
        android:inputType="text"/>

    <EditText
        android:id="@+id/emailInput"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="Enter Email"
        android:inputType="textEmailAddress"/>

    <RadioGroup
        android:id="@+id/genderGroup"
        android:layout_width="match_parent"
        android:layout_height="wrap_content">

        <RadioButton
            android:id="@+id/maleRadio"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="Male"/>

        <RadioButton
            android:id="@+id/femaleRadio"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="Female"/>
    </RadioGroup>

    <EditText
        android:id="@+id/passwordInput"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="Enter Password"
        android:inputType="textPassword"/>

    <Button
        android:id="@+id/submitButton"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Register"/>

    <TextView
        android:id="@+id/errorText"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text=""
        android:textColor="#FF0000"/>

</LinearLayout>

7."Hello World" Application & Explanation
Code (MainActivity.java)
package com.example.helloworld;

import androidx.appcompat.app.AppCompatActivity;
import android.os.Bundle;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }
}

Layout (activity_main.xml)
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:gravity="center">

    <TextView
        android:id="@+id/helloText"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Hello World!"
        android:textSize="24sp"
        android:textStyle="bold"/>
</LinearLayout>

Explanation of Activity Files
📌 MainActivity.java
•	The onCreate method runs when the app starts.
•	setContentView(R.layout.activity_main); links the UI file (activity_main.xml) to this Java class.
📌 activity_main.xml
•	This is the UI layout file.
•	It contains a TextView that displays "Hello World!" on the screen.
8. Android Resources: Colors & Strings
Step 1: Define Colors in colors.xml
📍 Open res → values → colors.xml and add:
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <color name="primaryColor">#6200EE</color>
    <color name="secondaryColor">#03DAC5</color>
    <color name="whiteColor">#FFFFFF</color>
</resources>
Step 2: Use Colors in activity_main.xml
<TextView
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="Welcome to Android!"
    android:textColor="@color/primaryColor"
    android:textSize="24sp"/>
Step 3: Use Colors in Java Code
textView.setTextColor(getResources().getColor(R.color.primaryColor));
📌 Using Strings in Android
Step 1: Define Strings in strings.xml
📍 Open res → values → strings.xml and add:
<resources>
    <string name="app_name">My Android App</string>
    <string name="welcome_message">Welcome to Android Development!</string>
</resources>

Step 2: Use Strings in activity_main.xml
<TextView
    android:layout_width="wrap_content"
    android:layout_height="wrap_content"
    android:text="@string/welcome_message"
    android:textSize="20sp"/>

Step 3: Use Strings in Java Code
textView.setText(getString(R.string.welcome_message));
