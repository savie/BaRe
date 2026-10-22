package defpackage;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.google.android.material.listitem.ListItemLayout;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class ex4 extends GestureDetector.SimpleOnGestureListener {
    public final /* synthetic */ ListItemLayout a;

    public ex4(ListItemLayout listItemLayout) {
        this.a = listItemLayout;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onScroll(MotionEvent motionEvent, MotionEvent motionEvent2, float f, float f2) {
        ListItemLayout listItemLayout = this.a;
        if (listItemLayout.getParent() == null) {
            return false;
        }
        listItemLayout.getParent().requestDisallowInterceptTouchEvent(true);
        return false;
    }
}
