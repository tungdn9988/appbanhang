package com.example.appbandodientu.activity;

import androidx.appcompat.app.AppCompatActivity;
import com.example.appbandodientu.R;

import android.content.Intent;
import android.os.Bundle;

import io.paperdb.Paper;

public class SpashActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_spash);
        setContentView(R.layout.activity_spash);
        Paper.init(this);
        Thread thread = new Thread(){

            public void run() {
                try {
                    sleep(2000);

                } catch (Exception ex) {

                } finally {
                    if (Paper.book().read("user") == null) {
                        Intent intent = new Intent(getApplicationContext(), DangNhapActivity.class);
                        startActivity(intent);
                        finish();

                    } else {
                        Intent home = new Intent(getApplicationContext(), MainActivity.class);
                        startActivity(home);
                        finish();



                      }

                  }
               }
            };
        thread.start();
        }
    }