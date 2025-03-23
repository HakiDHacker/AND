P1(Area of a circle)
Activity_main.xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:padding="20dp"
    android:gravity="center">

    <TextView
        android:id="@+id/titleText"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/title"
        android:textSize="20sp"
        android:textStyle="bold"
        android:paddingBottom="10dp" />

    <EditText
        android:id="@+id/inputRadius"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="@string/enter_radius"
        android:inputType="numberDecimal"
        android:padding="10dp"
        android:textSize="16sp"/>

    <Button
        android:id="@+id/calculateButton"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="@string/calculate_area"
        android:layout_marginTop="10dp"/>

    <TextView
        android:id="@+id/resultText"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/default_result"
        android:textSize="18sp"
        android:layout_marginTop="10dp"/>
</LinearLayout>

mainActivity.java
package com.example.myapplication;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    EditText inputRadius;
    Button calculateButton;
    TextView resultText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Initialize UI components
        inputRadius = findViewById(R.id.inputRadius);
        calculateButton = findViewById(R.id.calculateButton);
        resultText = findViewById(R.id.resultText);

        // Set button click listener
        calculateButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                calculateArea();
            }
        });
    }

    private void calculateArea() {
        String radiusStr = inputRadius.getText().toString().trim();

        if (!radiusStr.isEmpty()) {
            double radius = Double.parseDouble(radiusStr);
            double area = Math.PI * radius * radius;

            // Use getString() for string resources
            resultText.setText(getString(R.string.area_text, area));
        } else {
            Toast.makeText(this, getString(R.string.error_empty_radius), Toast.LENGTH_SHORT).show();
        }
    }
}
Strings.xml
<resources>
    <string name="app_name">Circle Area Calculator</string>
    <string name="title">Calculate Area of a Circle</string>
    <string name="enter_radius">Enter radius</string>
    <string name="calculate_area">Calculate Area</string>
    <string name="default_result">Area will be displayed here</string>
    <string name="error_empty_radius">Please enter a radius!</string>
    <string name="area_text">Area: %1$.2f sq. units</string>
</resources>

P2(Area of a Rectangle)
Activity_main.xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:padding="20dp"
    android:gravity="center">

    <TextView
        android:id="@+id/titleText"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/title"
        android:textSize="20sp"
        android:textStyle="bold"
        android:paddingBottom="10dp" />

    <EditText
        android:id="@+id/inputLength"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="@string/enter_length"
        android:inputType="numberDecimal"
        android:padding="10dp"
        android:textSize="16sp"/>

    <EditText
        android:id="@+id/inputWidth"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="@string/enter_width"
        android:inputType="numberDecimal"
        android:padding="10dp"
        android:textSize="16sp"
        android:layout_marginTop="10dp"/>

    <Button
        android:id="@+id/calculateButton"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="@string/calculate_area"
        android:layout_marginTop="10dp"/>

    <TextView
        android:id="@+id/resultText"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/default_result"
        android:textSize="18sp"
        android:layout_marginTop="10dp"/>
</LinearLayout>

Mainactivity.java
package com.example.myapplication;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    EditText inputLength, inputWidth;
    Button calculateButton;
    TextView resultText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Initialize UI components
        inputLength = findViewById(R.id.inputLength);
        inputWidth = findViewById(R.id.inputWidth);
        calculateButton = findViewById(R.id.calculateButton);
        resultText = findViewById(R.id.resultText);

        // Set button click listener
        calculateButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                calculateArea();
            }
        });
    }

    private void calculateArea() {
        String lengthStr = inputLength.getText().toString().trim();
        String widthStr = inputWidth.getText().toString().trim();

        if (!lengthStr.isEmpty() && !widthStr.isEmpty()) {
            double length = Double.parseDouble(lengthStr);
            double width = Double.parseDouble(widthStr);
            double area = length * width;

            // Use getString() for string resources
            resultText.setText(getString(R.string.area_text, area));
        } else {
            Toast.makeText(this, getString(R.string.error_empty), Toast.LENGTH_SHORT).show();
        }
    }
}

strings.xml
<resources>
    <string name="app_name">Rectangle Area Calculator</string>
    <string name="title">Calculate Area of a Rectangle</string>
    <string name="enter_length">Enter length</string>
    <string name="enter_width">Enter width</string>
    <string name="calculate_area">Calculate Area</string>
    <string name="default_result">Area will be displayed here</string>
    <string name="error_empty">Please enter both length and width!</string>
    <string name="area_text">Area: %1$.2f sq. units</string>
</resources>


(P3) Area of a Sqaure
Activitymain.xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:padding="20dp"
    android:gravity="center">

    <TextView
        android:id="@+id/titleText"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/title"
        android:textSize="20sp"
        android:textStyle="bold"
        android:paddingBottom="10dp" />

    <EditText
        android:id="@+id/inputSide"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="@string/enter_side"
        android:inputType="numberDecimal"
        android:padding="10dp"
        android:textSize="16sp"/>

    <Button
        android:id="@+id/calculateButton"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="@string/calculate_area"
        android:layout_marginTop="10dp"/>

    <TextView
        android:id="@+id/resultText"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/default_result"
        android:textSize="18sp"
        android:layout_marginTop="10dp"/>
</LinearLayout>

Mainactivity.java
package com.example.myapplication;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    EditText inputSide;
    Button calculateButton;
    TextView resultText;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Initialize UI components
        inputSide = findViewById(R.id.inputSide);
        calculateButton = findViewById(R.id.calculateButton);
        resultText = findViewById(R.id.resultText);

        // Set button click listener
        calculateButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                calculateArea();
            }
        });
    }

    private void calculateArea() {
        String sideStr = inputSide.getText().toString().trim();

        if (!sideStr.isEmpty()) {
            double side = Double.parseDouble(sideStr);
            double area = side * side;

            // Use getString() for string resources
            resultText.setText(getString(R.string.area_text, area));
        } else {
            Toast.makeText(this, getString(R.string.error_empty), Toast.LENGTH_SHORT).show();
        }
    }
}

strings.xml
<resources>
    <string name="app_name">Square Area Calculator</string>
    <string name="title">Calculate Area of a Square</string>
    <string name="enter_side">Enter side length</string>
    <string name="calculate_area">Calculate Area</string>
    <string name="default_result">Area will be displayed here</string>
    <string name="error_empty">Please enter the side length!</string>
    <string name="area_text">Area: %1$.2f sq. units</string>
</resources>

(P4)  login screen with EditText fields for username and password, and a Button to submit. Include validation for empty fields.
Activitymain.xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:gravity="center"
    android:padding="20dp">

    <TextView
        android:id="@+id/titleText"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/login_title"
        android:textSize="22sp"
        android:textStyle="bold"
        android:paddingBottom="20dp"/>

    <EditText
        android:id="@+id/username"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="@string/enter_username"
        android:inputType="textPersonName"
        android:padding="10dp"/>

    <EditText
        android:id="@+id/password"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="@string/enter_password"
        android:inputType="textPassword"
        android:padding="10dp"
        android:layout_marginTop="10dp"/>

    <Button
        android:id="@+id/loginButton"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="@string/login_button"
        android:layout_marginTop="10dp"/>

</LinearLayout>

Mainactivity.java
package com.example.myapplication;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {

    EditText username, password;
    Button loginButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Initialize UI components
        username = findViewById(R.id.username);
        password = findViewById(R.id.password);
        loginButton = findViewById(R.id.loginButton);

        // Set button click listener
        loginButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                validateLogin();
            }
        });
    }

    private void validateLogin() {
        String user = username.getText().toString().trim();
        String pass = password.getText().toString().trim();

        if (user.isEmpty() || pass.isEmpty()) {
            Toast.makeText(this, getString(R.string.empty_fields), Toast.LENGTH_SHORT).show();
        } else {
            Toast.makeText(this, getString(R.string.login_success), Toast.LENGTH_SHORT).show();
        }
    }
}

strings.xml
<resources>
    <string name="app_name">Login Screen</string>
    <string name="login_title">User Login</string>
    <string name="enter_username">Enter Username</string>
    <string name="enter_password">Enter Password</string>
    <string name="login_button">Login</string>
    <string name="empty_fields">Please fill in both fields!</string>
    <string name="login_success">Login Successful!</string>
</resources>

(P5) Create a Registration Form with the following fields: • Username(Text Input) • EmailAddress (Text Input) • Gender(Radio Buttons with options "Male" and "Female") • Password (Password Input) Submit Button
Activitymain.xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:gravity="center"
    android:padding="20dp">

    <TextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/register_title"
        android:textSize="22sp"
        android:textStyle="bold"
        android:paddingBottom="20dp"/>

    <EditText
        android:id="@+id/username"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="@string/enter_username"
        android:inputType="textPersonName"
        android:padding="10dp"/>

    <EditText
        android:id="@+id/email"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="@string/enter_email"
        android:inputType="textEmailAddress"
        android:padding="10dp"
        android:layout_marginTop="10dp"/>

    <TextView
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/select_gender"
        android:textSize="16sp"
        android:layout_marginTop="10dp"/>

    <RadioGroup
        android:id="@+id/genderGroup"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:orientation="horizontal">

        <RadioButton
            android:id="@+id/male"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="@string/male"/>

        <RadioButton
            android:id="@+id/female"
            android:layout_width="wrap_content"
            android:layout_height="wrap_content"
            android:text="@string/female"
            android:layout_marginStart="20dp"/>
    </RadioGroup>

    <EditText
        android:id="@+id/password"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="@string/enter_password"
        android:inputType="textPassword"
        android:padding="10dp"
        android:layout_marginTop="10dp"/>

    <Button
        android:id="@+id/registerButton"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:text="@string/register_button"
        android:layout_marginTop="10dp"/>

</LinearLayout>

Mainactivity.java
package com.example.myapplication;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RadioButton;
import android.widget.RadioGroup;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;
import java.util.regex.Pattern;

public class MainActivity extends AppCompatActivity {

    EditText username, email, password;
    RadioGroup genderGroup;
    Button registerButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Initialize UI components
        username = findViewById(R.id.username);
        email = findViewById(R.id.email);
        password = findViewById(R.id.password);
        genderGroup = findViewById(R.id.genderGroup);
        registerButton = findViewById(R.id.registerButton);

        // Set button click listener
        registerButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                validateRegistration();
            }
        });
    }

    private void validateRegistration() {
        String user = username.getText().toString().trim();
        String userEmail = email.getText().toString().trim();
        String userPass = password.getText().toString().trim();
        int selectedGenderId = genderGroup.getCheckedRadioButtonId();

        // Email validation pattern
        Pattern emailPattern = Pattern.compile("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$");

        if (user.isEmpty() || userEmail.isEmpty() || userPass.isEmpty() || selectedGenderId == -1) {
            Toast.makeText(this, getString(R.string.empty_fields), Toast.LENGTH_SHORT).show();
        } else if (!emailPattern.matcher(userEmail).matches()) {
            Toast.makeText(this, getString(R.string.invalid_email), Toast.LENGTH_SHORT).show();
        } else {
            // Get selected gender
            RadioButton selectedGender = findViewById(selectedGenderId);
            String gender = selectedGender.getText().toString();

            // Show success message
            String successMessage = getString(R.string.register_success) + "\nUsername: " + user +
                    "\nEmail: " + userEmail + "\nGender: " + gender;
            Toast.makeText(this, successMessage, Toast.LENGTH_LONG).show();
        }
    }
}

Strings.xml
<resources>
    <string name="app_name">Registration Form</string>
    <string name="register_title">User Registration</string>
    <string name="enter_username">Enter Username</string>
    <string name="enter_email">Enter Email</string>
    <string name="enter_password">Enter Password</string>
    <string name="select_gender">Select Gender:</string>
    <string name="male">Male</string>
    <string name="female">Female</string>
    <string name="register_button">Register</string>
    <string name="empty_fields">All fields are required!</string>
    <string name="invalid_email">Enter a valid email!</string>
    <string name="register_success">Registration Successful!</string>
</resources>

(P6) Create a Registration Form with the following fields:
Username (Text Input), Email Address (Text Input),Phone Number (Text Input),Password (Password Input),Submit Button (Floating Action Button)
Activitymain.xml
<?xml version="1.0" encoding="utf-8"?>
<RelativeLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:padding="20dp">

    <TextView
        android:id="@+id/register_title"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/register_title"
        android:textSize="22sp"
        android:textStyle="bold"
        android:layout_centerHorizontal="true"/>


    <EditText
        android:id="@+id/username"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="@string/enter_username"
        android:inputType="textPersonName"
        android:padding="10dp"
        android:layout_below="@id/register_title"
        android:layout_marginTop="20dp"/>

    <EditText
        android:id="@+id/email"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="@string/enter_email"
        android:inputType="textEmailAddress"
        android:padding="10dp"
        android:layout_below="@id/username"
        android:layout_marginTop="10dp"/>

    <EditText
        android:id="@+id/phone"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="@string/enter_phone"
        android:inputType="phone"
        android:padding="10dp"
        android:layout_below="@id/email"
        android:layout_marginTop="10dp"/>

    <EditText
        android:id="@+id/password"
        android:layout_width="match_parent"
        android:layout_height="wrap_content"
        android:hint="@string/enter_password"
        android:inputType="textPassword"
        android:padding="10dp"
        android:layout_below="@id/phone"
        android:layout_marginTop="10dp"/>

    <com.google.android.material.floatingactionbutton.FloatingActionButton
        android:id="@+id/registerButton"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:src="@android:drawable/ic_menu_save"
        android:layout_centerHorizontal="true"
        android:layout_marginTop="20dp"
        android:layout_below="@id/password"/>

</RelativeLayout>

Mainactivity.java
package com.example.myapplication;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import android.widget.Toast;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import androidx.appcompat.app.AppCompatActivity;
import java.util.regex.Pattern;

public class MainActivity extends AppCompatActivity {

    EditText username, email, phone, password;
    FloatingActionButton registerButton;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        // Initialize UI components
        username = findViewById(R.id.username);
        email = findViewById(R.id.email);
        phone = findViewById(R.id.phone);
        password = findViewById(R.id.password);
        registerButton = findViewById(R.id.registerButton);

        // Set button click listener
        registerButton.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View v) {
                validateRegistration();
            }
        });
    }

    private void validateRegistration() {
        String user = username.getText().toString().trim();
        String userEmail = email.getText().toString().trim();
        String userPhone = phone.getText().toString().trim();
        String userPass = password.getText().toString().trim();

        // Email validation pattern
        Pattern emailPattern = Pattern.compile("^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\\.[a-zA-Z]{2,}$");

        // Phone validation (10-digit only)
        Pattern phonePattern = Pattern.compile("^\\d{10}$");

        if (user.isEmpty() || userEmail.isEmpty() || userPhone.isEmpty() || userPass.isEmpty()) {
            Toast.makeText(this, getString(R.string.empty_fields), Toast.LENGTH_SHORT).show();
        } else if (!emailPattern.matcher(userEmail).matches()) {
            Toast.makeText(this, getString(R.string.invalid_email), Toast.LENGTH_SHORT).show();
        } else if (!phonePattern.matcher(userPhone).matches()) {
            Toast.makeText(this, getString(R.string.invalid_phone), Toast.LENGTH_SHORT).show();
        } else {
            // Show success message
            String successMessage = getString(R.string.register_success) + "\nUsername: " + user +
                    "\nEmail: " + userEmail + "\nPhone: " + userPhone;
            Toast.makeText(this, successMessage, Toast.LENGTH_LONG).show();
        }
    }
}
strings.xml
<resources>
    <string name="app_name">Registration Form FAB</string>
    <string name="register_title">User Registration</string>
    <string name="enter_username">Enter Username</string>
    <string name="enter_email">Enter Email</string>
    <string name="enter_phone">Enter Phone Number</string>
    <string name="enter_password">Enter Password</string>
    <string name="empty_fields">All fields are required!</string>
    <string name="invalid_email">Enter a valid email!</string>
    <string name="invalid_phone">Enter a valid 10-digit phone number!</string>
    <string name="register_success">Registration Successful!</string>
</resources>

(p7) Create a simple "Hello World" application in Android Studio. Explain the purpose of the activity_main.xml and main activity file.
Activitymain.xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:gravity="center"
    android:padding="20dp">

    <TextView
        android:id="@+id/textView"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/hello_world"
        android:textSize="24sp"
        android:textStyle="bold"
        android:textColor="@android:color/black"/>

</LinearLayout>

Mainactivity.java
package com.example.myapplication;
import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main); // Link UI with Java Code
    }
}
Strings.xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">HelloWorldApp</string>
    <string name="hello_world">Hello, World!</string>
</resources>

In an Android app, two key files work together:
1.	activity_main.xml → Defines the UI (User Interface) layout.
2.	MainActivity.java → Handles app logic and user interactions.
________________________________________
✅ 1. Purpose of activity_main.xml (UI Layout)
📍 Location: res/layout/activity_main.xml
📌 What it does:
•	It defines the visual elements of the app (buttons, text fields, etc.).
•	It follows XML (Extensible Markup Language) to structure the layout.
•	The UI is linked to Java/Kotlin code using setContentView() in MainActivity.java.
📌 Example of activity_main.xml:
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:gravity="center">

    <TextView
        android:id="@+id/textView"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="Hello, World!"
        android:textSize="24sp"
        android:textStyle="bold"/>
</LinearLayout>

✅ Key Points:
•	Defines a TextView that displays "Hello, World!".
•	Uses LinearLayout to arrange elements vertically.
•	android:text="Hello, World!" → Displays text on the screen.

2. Purpose of MainActivity.java (App Logic)
📍 Location: app/src/main/java/com/example/yourapp/MainActivity.java
📌 What it does:
•	It is the entry point of the app (executed when the app starts).
•	It controls app behavior and handles user interactions.
•	The onCreate() method is executed when the app starts.
•	It links the UI (activity_main.xml) with the backend logic using setContentView().
📌 Example of MainActivity.java:
package com.example.helloworldapp;

import android.os.Bundle;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main); // Load the UI from XML
    }
}
Key Points:
•	extends AppCompatActivity → Allows using Android features.
•	onCreate() → Runs when the app launches.
•	setContentView(R.layout.activity_main); → Links activity_main.xml to this Java file.

(P8) Insert the new contents in the following resources and demonstrate their uses in the android application Android Resources: (Color, String)
Activitymain.xml
<?xml version="1.0" encoding="utf-8"?>
<LinearLayout xmlns:android="http://schemas.android.com/apk/res/android"
    android:layout_width="match_parent"
    android:layout_height="match_parent"
    android:orientation="vertical"
    android:gravity="center"
    android:padding="20dp"
    android:background="@color/primaryColor">

    <TextView
        android:id="@+id/textView"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/textview_message"
        android:textSize="20sp"
        android:textColor="@color/textColor"
        android:padding="10dp"/>

    <Button
        android:id="@+id/button"
        android:layout_width="wrap_content"
        android:layout_height="wrap_content"
        android:text="@string/button_text"
        android:backgroundTint="@color/buttonColor"
        android:textColor="@color/textColor"
        android:padding="10dp"/>
</LinearLayout>

Strings.xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <string name="app_name">ResourceDemo</string>
    <string name="welcome_message">Welcome to Resource Demo App!</string>
    <string name="button_text">Click Me</string>
    <string name="textview_message">Hello, this text uses string resources!</string>
</resources>

Colors.xml
<?xml version="1.0" encoding="utf-8"?>
<resources>
    <color name="primaryColor">#6200EE</color>
    <color name="secondaryColor">#03DAC5</color>
    <color name="textColor">#FFFFFF</color>
    <color name="buttonColor">#FF9800</color>
</resources>

Mainactivity.java
package com.example.myapplication;
import android.os.Bundle;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import androidx.appcompat.app.AppCompatActivity;

public class MainActivity extends AppCompatActivity {
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main); // Load UI Layout

        // Linking UI elements with Java Code
        TextView textView = findViewById(R.id.textView);
        Button button = findViewById(R.id.button);

        // Setting string resource programmatically
        textView.setText(getResources().getString(R.string.textview_message));

        // Button Click Event
        button.setOnClickListener(v ->
                Toast.makeText(MainActivity.this, getString(R.string.welcome_message), Toast.LENGTH_SHORT).show()
        );
    }
}





