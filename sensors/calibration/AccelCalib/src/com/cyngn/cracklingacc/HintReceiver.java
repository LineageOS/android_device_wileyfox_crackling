package com.cyngn.cracklingacc;

import static com.android.internal.telephony.TelephonyIntents.SECRET_CODE_ACTION;

import android.content.Context;
import android.content.Intent;
import android.content.BroadcastReceiver;
import android.os.SystemProperties;
import android.util.Log;
import android.view.KeyEvent;
import android.widget.Toast;

import com.cyngn.cracklingacc.R;


public class HintReceiver extends BroadcastReceiver {

    private static final String SECRET_CODE_PREFIX = "android_secret_code://";

    private static final String CALIB_MODE = "22235";
    public HintReceiver() {
    }
    
    @Override
    public void onReceive(Context context, Intent intent) {
        SystemProperties.set("sys.sensors.acc","calibrate");
        Toast.makeText(context, R.string.acc_calibration_complete, Toast.LENGTH_LONG).show();
    }
}
