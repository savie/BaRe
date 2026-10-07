package defpackage;

import com.google.android.material.button.MaterialButton;
import java.util.Comparator;

public final class l85 implements Comparator {
    public final o85 a;
    public l85(o85 owner){ this.a=owner; }
    @Override public final int compare(Object x,Object y){
        MaterialButton b1=(MaterialButton)x, b2=(MaterialButton)y;
        int c=Boolean.valueOf(b1.M).compareTo(Boolean.valueOf(b2.M));
        if(c!=0) return c;
        c=Boolean.valueOf(b1.isPressed()).compareTo(Boolean.valueOf(b2.isPressed()));
        if(c!=0) return c;
        return Integer.compare(this.a.indexOfChild(b1), this.a.indexOfChild(b2));
    }
}
