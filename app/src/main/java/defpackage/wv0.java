package defpackage;

import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.button.MaterialButton;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class wv0 implements jk8 {
    public final /* synthetic */ int a = 1;
    public final Object b;
    public final Object c;
    public final Object d;
    public final Object e;
    public final Object f;

    public wv0(Constructor constructor, uw5 uw5Var, x44 x44Var) throws kd5 {
        ot9 ot9Var = new ot9();
        ot9Var.a = new zw5();
        ot9Var.b = constructor;
        this.d = ot9Var;
        this.b = new vk9(x44Var);
        this.c = constructor.getDeclaringClass();
        this.f = constructor;
        this.e = uw5Var;
        Class<?>[] parameterTypes = constructor.getParameterTypes();
        int i = 0;
        while (i < parameterTypes.length) {
            Class<?> cls = parameterTypes[i];
            Annotation[][] parameterAnnotations = constructor.getParameterAnnotations();
            int i2 = 0;
            while (true) {
                Annotation[] annotationArr = parameterAnnotations[i];
                if (i2 < annotationArr.length) {
                    Annotation annotation = annotationArr[i2];
                    List<tw5> listA = ((annotation instanceof u70) || (annotation instanceof at2) || (annotation instanceof gt2) || (annotation instanceof ct2) || (annotation instanceof mt2)) ? a(annotation, i) : ((annotation instanceof jt2) || (annotation instanceof pt2) || (annotation instanceof ut2)) ? c(annotation, i) : annotation instanceof q08 ? a(annotation, i) : Collections.EMPTY_LIST;
                    for (tw5 tw5Var : listA) {
                        vf7 vf7VarC = ((zw5) ((ot9) this.d).a).c(i);
                        if (vf7VarC != null) {
                            vf7VarC.add(tw5Var);
                        }
                    }
                    i2++;
                }
            }
            i++;
        }
    }

    public List a(Annotation annotation, int i) throws kd5 {
        tw5 tw5VarO = ((vk9) this.b).o((Constructor) this.f, annotation, null, i);
        if (tw5VarO != null) {
            b(tw5VarO);
        }
        return Collections.singletonList(tw5VarO);
    }

    public void b(tw5 tw5Var) {
        Object obj = ((hz0) tw5Var).b;
        uw5 uw5Var = (uw5) this.e;
        if (uw5Var.containsKey(obj)) {
            d(tw5Var, obj);
        }
        if (uw5Var.containsKey(null)) {
            d(tw5Var, null);
        }
        uw5Var.put(null, tw5Var);
        uw5Var.put(obj, tw5Var);
    }

    public List c(Annotation annotation, int i) throws kd5 {
        Class cls = (Class) this.c;
        Constructor constructor = (Constructor) this.f;
        constructor.getDeclaringClass();
        uw5 uw5Var = new uw5();
        Method[] declaredMethods = annotation.annotationType().getDeclaredMethods();
        if (declaredMethods.length != 1) {
            throw new wt1("Annotation '%s' is not a valid union for %s", annotation, cls);
        }
        for (Annotation annotation2 : (Annotation[]) declaredMethods[0].invoke(annotation, null)) {
            tw5 tw5VarO = ((vk9) this.b).o(constructor, annotation, annotation2, i);
            ((hz0) tw5VarO).getClass();
            if (uw5Var.containsKey(null)) {
                throw new wt1("Annotation name '%s' used more than once in %s for %s", null, annotation, cls);
            }
            uw5Var.put(null, tw5VarO);
            b(tw5VarO);
        }
        return uw5Var.d();
    }

    public void d(tw5 tw5Var, Object obj) {
        ((hz0) ((tw5) ((uw5) this.e).get(obj))).getClass();
    }

    @Override // defpackage.jk8
    public View getRoot() {
        int i = this.a;
        Object obj = this.d;
        switch (i) {
            case 0:
                return (ConstraintLayout) obj;
            default:
                return (LinearLayout) obj;
        }
    }

    public wv0(ConstraintLayout constraintLayout, ImageView imageView, ImageView imageView2, QuickRecyclerView quickRecyclerView, TextView textView) {
        this.d = constraintLayout;
        this.b = imageView;
        this.e = imageView2;
        this.f = quickRecyclerView;
        this.c = textView;
    }

    public wv0(LinearLayout linearLayout, MaterialButton materialButton, MaterialButton materialButton2, ImageView imageView, TextView textView) {
        this.d = linearLayout;
        this.e = materialButton;
        this.f = materialButton2;
        this.b = imageView;
        this.c = textView;
    }
}
