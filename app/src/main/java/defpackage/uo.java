package defpackage;

import android.app.Activity;
import android.content.ClipData;
import android.os.Build;
import android.text.Selection;
import android.text.Spannable;
import android.view.DragEvent;
import android.view.View;
import android.widget.TextView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public abstract class uo {
    public static boolean a(DragEvent dragEvent, TextView textView, Activity activity) {
        lu1 ku1Var;
        activity.requestDragAndDropPermissions(dragEvent);
        int offsetForPosition = textView.getOffsetForPosition(dragEvent.getX(), dragEvent.getY());
        textView.beginBatchEdit();
        try {
            Selection.setSelection((Spannable) textView.getText(), offsetForPosition);
            ClipData clipData = dragEvent.getClipData();
            if (Build.VERSION.SDK_INT >= 31) {
                ku1Var = new ku1(clipData, 3);
            } else {
                mu1 mu1Var = new mu1();
                mu1Var.a = clipData;
                mu1Var.b = 3;
                ku1Var = mu1Var;
            }
            dl8.j(textView, ku1Var.build());
            return true;
        } finally {
            textView.endBatchEdit();
        }
    }

    public static boolean b(DragEvent dragEvent, View view, Activity activity) {
        lu1 ku1Var;
        activity.requestDragAndDropPermissions(dragEvent);
        ClipData clipData = dragEvent.getClipData();
        if (Build.VERSION.SDK_INT >= 31) {
            ku1Var = new ku1(clipData, 3);
        } else {
            mu1 mu1Var = new mu1();
            mu1Var.a = clipData;
            mu1Var.b = 3;
            ku1Var = mu1Var;
        }
        dl8.j(view, ku1Var.build());
        return true;
    }
}
