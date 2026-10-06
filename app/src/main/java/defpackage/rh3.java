package defpackage;

import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.core.widget.NestedScrollView;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.textfield.TextInputEditText;
import com.google.android.material.textfield.TextInputLayout;
import com.jcraft.jsch.SftpATTRS;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.swiftapps.swiftbackup.R;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes.dex */
public final class rh3 {
    public final Object a;
    public Object b;
    public Object c;
    public Object d;
    public Object e;

    public rh3(il0 il0Var) {
        View viewInflate = View.inflate(il0Var, R.layout.user_old_passwords_dialog, null);
        int i = R.id.btn_cancel;
        MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate, R.id.btn_cancel);
        if (materialButton != null) {
            i = R.id.btn_save;
            MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate, R.id.btn_save);
            if (materialButton2 != null) {
                i = R.id.iv_icon;
                if (((ImageView) ms8.u(viewInflate, R.id.iv_icon)) != null) {
                    i = R.id.til_old_password;
                    View viewU = ms8.u(viewInflate, R.id.til_old_password);
                    if (viewU != null) {
                        ka kaVarB = ka.b(viewU);
                        if (((TextView) ms8.u(viewInflate, R.id.tv_title)) != null) {
                            this.a = new jd6((NestedScrollView) viewInflate, materialButton, materialButton2, kaVarB);
                            this.b = (TextInputLayout) kaVarB.c;
                            this.c = (TextInputEditText) kaVarB.b;
                            this.d = materialButton2;
                            this.e = materialButton;
                            return;
                        }
                        i = R.id.tv_title;
                    }
                }
            }
        }
        f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i)));
        throw null;
    }

    public static ArrayList e(List list, int i, int i2) {
        int i3 = (i - i2) / 2;
        ArrayList arrayList = new ArrayList();
        oh3 oh3Var = new oh3();
        oh3Var.g = i3;
        int size = list.size();
        for (int i4 = 0; i4 < size; i4++) {
            if (i4 == 0) {
                arrayList.add(oh3Var);
            }
            arrayList.add((oh3) list.get(i4));
            if (i4 == list.size() - 1) {
                arrayList.add(oh3Var);
            }
        }
        return arrayList;
    }

    public static int[] t(int i, ArrayList arrayList, SparseIntArray sparseIntArray) {
        Collections.sort(arrayList);
        sparseIntArray.clear();
        int[] iArr = new int[i];
        Iterator it = arrayList.iterator();
        int i2 = 0;
        while (it.hasNext()) {
            qh3 qh3Var = (qh3) it.next();
            int i3 = qh3Var.a;
            iArr[i2] = i3;
            sparseIntArray.append(i3, qh3Var.b);
            i2++;
        }
        return iArr;
    }

    public void a(List list, oh3 oh3Var, int i, int i2) {
        oh3Var.m = i2;
        ((mh3) this.a).h(oh3Var);
        oh3Var.p = i;
        list.add(oh3Var);
    }

    /* JADX WARN: Code duplicated, block: B:83:0x01cd  */
    public void b(ph3 ph3Var, int i, int i2, int i3, int i4, int i5, List list) {
        int iG;
        nh3 nh3Var;
        int i6;
        boolean z;
        int i7 = i;
        mh3 mh3Var = (mh3) this.a;
        boolean zJ = mh3Var.j();
        int mode = View.MeasureSpec.getMode(i7);
        int size = View.MeasureSpec.getSize(i7);
        List arrayList = list == null ? new ArrayList() : list;
        ph3Var.b = arrayList;
        boolean z2 = i5 == -1;
        int paddingStart = zJ ? mh3Var.getPaddingStart() : mh3Var.getPaddingTop();
        int paddingEnd = zJ ? mh3Var.getPaddingEnd() : mh3Var.getPaddingBottom();
        int paddingTop = zJ ? mh3Var.getPaddingTop() : mh3Var.getPaddingStart();
        int paddingBottom = zJ ? mh3Var.getPaddingBottom() : mh3Var.getPaddingEnd();
        oh3 oh3Var = new oh3();
        int i8 = i4;
        int i9 = 1;
        oh3Var.o = i8;
        int i10 = paddingStart + paddingEnd;
        oh3Var.e = i10;
        int flexItemCount = mh3Var.getFlexItemCount();
        boolean z3 = z2;
        int i11 = Integer.MIN_VALUE;
        int iCombineMeasuredStates = 0;
        int i12 = 0;
        int i13 = 0;
        while (i8 < flexItemCount) {
            int i14 = flexItemCount;
            View viewB = mh3Var.b(i8);
            if (viewB != null) {
                if (viewB.getVisibility() == 8) {
                    oh3Var.i++;
                    oh3Var.h++;
                    if (i8 == i14 - 1 && oh3Var.a() != 0) {
                        a(arrayList, oh3Var, i8, i12);
                    }
                } else {
                    if (viewB instanceof CompoundButton) {
                        CompoundButton compoundButton = (CompoundButton) viewB;
                        nh3 nh3Var2 = (nh3) compoundButton.getLayoutParams();
                        int iH = nh3Var2.h();
                        int iW = nh3Var2.w();
                        Drawable buttonDrawable = compoundButton.getButtonDrawable();
                        int minimumWidth = buttonDrawable == null ? 0 : buttonDrawable.getMinimumWidth();
                        int minimumHeight = buttonDrawable == null ? 0 : buttonDrawable.getMinimumHeight();
                        if (iH == -1) {
                            iH = minimumWidth;
                        }
                        nh3Var2.i(iH);
                        if (iW == -1) {
                            iW = minimumHeight;
                        }
                        nh3Var2.p(iW);
                    }
                    nh3 nh3Var3 = (nh3) viewB.getLayoutParams();
                    if (nh3Var3.d() == 4) {
                        oh3Var.n.add(Integer.valueOf(i8));
                    }
                    int iB = zJ ? nh3Var3.b() : nh3Var3.a();
                    if (nh3Var3.s() != -1.0f && mode == 1073741824) {
                        iB = Math.round(nh3Var3.s() * size);
                    }
                    if (zJ) {
                        iG = mh3Var.c(i7, nh3Var3.t() + nh3Var3.k() + i10, iB);
                        int iG2 = mh3Var.g(i2, nh3Var3.j() + nh3Var3.o() + paddingTop + paddingBottom + i12, nh3Var3.a());
                        viewB.measure(iG, iG2);
                        x(i8, iG, iG2, viewB);
                    } else {
                        int iC = mh3Var.c(i2, nh3Var3.t() + nh3Var3.k() + paddingTop + paddingBottom + i12, nh3Var3.b());
                        iG = mh3Var.g(i7, nh3Var3.j() + nh3Var3.o() + i10, iB);
                        viewB.measure(iC, iG);
                        x(i8, iC, iG, viewB);
                    }
                    mh3Var.i(viewB, i8);
                    c(viewB, i8);
                    iCombineMeasuredStates = View.combineMeasuredStates(iCombineMeasuredStates, viewB.getMeasuredState());
                    int i15 = oh3Var.e;
                    int measuredWidth = (zJ ? viewB.getMeasuredWidth() : viewB.getMeasuredHeight()) + (zJ ? nh3Var3.k() : nh3Var3.o()) + (zJ ? nh3Var3.t() : nh3Var3.j());
                    int size2 = arrayList.size();
                    if (mh3Var.getFlexWrap() != 0) {
                        if (nh3Var3.x()) {
                            nh3Var = nh3Var3;
                        } else {
                            if (mode == 0) {
                                nh3Var = nh3Var3;
                            } else {
                                nh3Var = nh3Var3;
                                int maxLine = mh3Var.getMaxLine();
                                if (maxLine == -1 || maxLine > size2 + 1) {
                                    int iF = mh3Var.f(viewB, i8, i13);
                                    if (iF > 0) {
                                        measuredWidth += iF;
                                    }
                                    if (size < i15 + measuredWidth) {
                                    }
                                }
                            }
                            i10 = i10;
                            arrayList = arrayList;
                            oh3Var.h += i9;
                            i13++;
                            i6 = i11;
                        }
                        if (oh3Var.a() > 0) {
                            arrayList = arrayList;
                            a(arrayList, oh3Var, i8 > 0 ? i8 - 1 : 0, i12);
                            i12 += oh3Var.g;
                        }
                        if (zJ) {
                            arrayList = arrayList;
                            if (nh3Var.a() == -1) {
                                viewB.measure(iG, mh3Var.g(i2, nh3Var.j() + nh3Var.o() + mh3Var.getPaddingBottom() + mh3Var.getPaddingTop() + i12, nh3Var.a()));
                                c(viewB, i8);
                            }
                        } else {
                            arrayList = arrayList;
                            if (nh3Var.b() == -1) {
                                viewB.measure(mh3Var.c(i2, nh3Var.t() + nh3Var.k() + mh3Var.getPaddingRight() + mh3Var.getPaddingLeft() + i12, nh3Var.b()), iG);
                                c(viewB, i8);
                            }
                        }
                        oh3Var = new oh3();
                        oh3Var.h = i9;
                        i10 = i10;
                        oh3Var.e = i10;
                        oh3Var.o = i8;
                        i6 = Integer.MIN_VALUE;
                        i13 = 0;
                    } else {
                        nh3Var = nh3Var3;
                        i10 = i10;
                        arrayList = arrayList;
                        oh3Var.h += i9;
                        i13++;
                        i6 = i11;
                    }
                    oh3Var.q |= nh3Var.r() != 0.0f;
                    oh3Var.r |= nh3Var.f() != 0.0f;
                    int[] iArr = (int[]) this.c;
                    if (iArr != null) {
                        iArr[i8] = arrayList.size();
                    }
                    oh3Var.e = (zJ ? viewB.getMeasuredWidth() : viewB.getMeasuredHeight()) + (zJ ? nh3Var.k() : nh3Var.o()) + (zJ ? nh3Var.t() : nh3Var.j()) + oh3Var.e;
                    oh3Var.j = nh3Var.r() + oh3Var.j;
                    oh3Var.k = nh3Var.f() + oh3Var.k;
                    mh3Var.d(viewB, i8, i13, oh3Var);
                    int iMax = Math.max(i6, mh3Var.k(viewB) + (zJ ? viewB.getMeasuredHeight() : viewB.getMeasuredWidth()) + (zJ ? nh3Var.o() : nh3Var.k()) + (zJ ? nh3Var.j() : nh3Var.t()));
                    oh3Var.g = Math.max(oh3Var.g, iMax);
                    if (zJ) {
                        int flexWrap = mh3Var.getFlexWrap();
                        int i16 = oh3Var.l;
                        i11 = iMax;
                        if (flexWrap != 2) {
                            oh3Var.l = Math.max(i16, nh3Var.o() + viewB.getBaseline());
                        } else {
                            oh3Var.l = Math.max(i16, nh3Var.j() + (viewB.getMeasuredHeight() - viewB.getBaseline()));
                        }
                    } else {
                        i11 = iMax;
                    }
                    if (i8 == i14 - 1 && oh3Var.a() != 0) {
                        a(arrayList, oh3Var, i8, i12);
                        i12 += oh3Var.g;
                    }
                    if (i5 != -1 && arrayList.size() > 0) {
                        i9 = 1;
                        if (((oh3) arrayList.get(arrayList.size() - 1)).p >= i5 && i8 >= i5 && !z3) {
                            i12 = -oh3Var.g;
                            z = true;
                        }
                        if (i12 > i3 && z) {
                            break;
                        }
                    } else {
                        i9 = 1;
                    }
                    z = z3;
                    if (i12 > i3) {
                        continue;
                    }
                }
                i8++;
                i7 = i;
                z3 = z;
                flexItemCount = i14;
            } else if (i8 == i14 - 1 && oh3Var.a() != 0) {
                a(arrayList, oh3Var, i8, i12);
            }
            z = z3;
            i8++;
            i7 = i;
            z3 = z;
            flexItemCount = i14;
        }
        ph3Var.a = iCombineMeasuredStates;
    }

    /* JADX WARN: Code duplicated, block: B:12:0x002d  */
    /* JADX WARN: Code duplicated, block: B:13:0x0032  */
    /* JADX WARN: Code duplicated, block: B:15:0x0038  */
    /* JADX WARN: Code duplicated, block: B:16:0x003d  */
    /* JADX WARN: Code duplicated, block: B:18:0x0040  */
    /* JADX WARN: Code duplicated, block: B:20:? A[RETURN, SYNTHETIC] */
    public void c(View view, int i) {
        boolean z;
        nh3 nh3Var = (nh3) view.getLayoutParams();
        int measuredWidth = view.getMeasuredWidth();
        int measuredHeight = view.getMeasuredHeight();
        boolean z2 = true;
        if (measuredWidth >= nh3Var.h()) {
            if (measuredWidth > nh3Var.A()) {
                measuredWidth = nh3Var.A();
            } else {
                z = false;
            }
            if (measuredHeight < nh3Var.w()) {
                measuredHeight = nh3Var.w();
            } else if (measuredHeight > nh3Var.y()) {
                measuredHeight = nh3Var.y();
            } else {
                z2 = z;
            }
            if (z2) {
                int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
                int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
                view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
                x(i, iMakeMeasureSpec, iMakeMeasureSpec2, view);
                ((mh3) this.a).i(view, i);
            }
        }
        measuredWidth = nh3Var.h();
        z = true;
        if (measuredHeight < nh3Var.w()) {
            measuredHeight = nh3Var.w();
        } else if (measuredHeight > nh3Var.y()) {
            measuredHeight = nh3Var.y();
        } else {
            z2 = z;
        }
        if (z2) {
            int iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(measuredWidth, 1073741824);
            int iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(measuredHeight, 1073741824);
            view.measure(iMakeMeasureSpec3, iMakeMeasureSpec4);
            x(i, iMakeMeasureSpec3, iMakeMeasureSpec4, view);
            ((mh3) this.a).i(view, i);
        }
    }

    public void d(int i, List list) {
        int i2 = ((int[]) this.c)[i];
        if (i2 == -1) {
            i2 = 0;
        }
        if (list.size() > i2) {
            list.subList(i2, list.size()).clear();
        }
        int[] iArr = (int[]) this.c;
        int length = iArr.length - 1;
        if (i > length) {
            Arrays.fill(iArr, -1);
        } else {
            Arrays.fill(iArr, i, length, -1);
        }
        long[] jArr = (long[]) this.d;
        int length2 = jArr.length - 1;
        if (i > length2) {
            Arrays.fill(jArr, 0L);
        } else {
            Arrays.fill(jArr, i, length2, 0L);
        }
    }

    public ArrayList f(int i) {
        ArrayList arrayList = new ArrayList(i);
        for (int i2 = 0; i2 < i; i2++) {
            nh3 nh3Var = (nh3) ((mh3) this.a).e(i2).getLayoutParams();
            qh3 qh3Var = new qh3();
            qh3Var.b = nh3Var.getOrder();
            qh3Var.a = i2;
            arrayList.add(qh3Var);
        }
        return arrayList;
    }

    public void g(int i, int i2, int i3) {
        int mode;
        int size;
        mh3 mh3Var = (mh3) this.a;
        int flexDirection = mh3Var.getFlexDirection();
        if (flexDirection == 0 || flexDirection == 1) {
            int mode2 = View.MeasureSpec.getMode(i2);
            int size2 = View.MeasureSpec.getSize(i2);
            mode = mode2;
            size = size2;
        } else if (flexDirection != 2 && flexDirection != 3) {
            c6.f(fz5.j(flexDirection, "Invalid flex direction: "));
            return;
        } else {
            mode = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
        }
        List<oh3> flexLinesInternal = mh3Var.getFlexLinesInternal();
        if (mode == 1073741824) {
            int sumOfCrossSize = mh3Var.getSumOfCrossSize() + i3;
            int i4 = 0;
            if (flexLinesInternal.size() == 1) {
                ((oh3) flexLinesInternal.get(0)).g = size - i3;
                return;
            }
            if (flexLinesInternal.size() >= 2) {
                int alignContent = mh3Var.getAlignContent();
                if (alignContent == 1) {
                    oh3 oh3Var = new oh3();
                    oh3Var.g = size - sumOfCrossSize;
                    flexLinesInternal.add(0, oh3Var);
                    return;
                }
                if (alignContent == 2) {
                    mh3Var.setFlexLines(e(flexLinesInternal, size, sumOfCrossSize));
                    return;
                }
                if (alignContent == 3) {
                    if (sumOfCrossSize >= size) {
                        return;
                    }
                    float size3 = (size - sumOfCrossSize) / (flexLinesInternal.size() - 1);
                    ArrayList arrayList = new ArrayList();
                    int size4 = flexLinesInternal.size();
                    float f = 0.0f;
                    while (i4 < size4) {
                        arrayList.add((oh3) flexLinesInternal.get(i4));
                        if (i4 != flexLinesInternal.size() - 1) {
                            oh3 oh3Var2 = new oh3();
                            if (i4 == flexLinesInternal.size() - 2) {
                                oh3Var2.g = Math.round(f + size3);
                                f = 0.0f;
                            } else {
                                oh3Var2.g = Math.round(size3);
                            }
                            int i5 = oh3Var2.g;
                            float f2 = (size3 - i5) + f;
                            if (f2 > 1.0f) {
                                oh3Var2.g = i5 + 1;
                                f2 -= 1.0f;
                            } else if (f2 < -1.0f) {
                                oh3Var2.g = i5 - 1;
                                f2 += 1.0f;
                            }
                            f = f2;
                            arrayList.add(oh3Var2);
                        }
                        i4++;
                    }
                    mh3Var.setFlexLines(arrayList);
                    return;
                }
                if (alignContent == 4) {
                    if (sumOfCrossSize >= size) {
                        mh3Var.setFlexLines(e(flexLinesInternal, size, sumOfCrossSize));
                        return;
                    }
                    int size5 = (size - sumOfCrossSize) / (flexLinesInternal.size() * 2);
                    ArrayList arrayList2 = new ArrayList();
                    oh3 oh3Var3 = new oh3();
                    oh3Var3.g = size5;
                    for (oh3 oh3Var4 : flexLinesInternal) {
                        arrayList2.add(oh3Var3);
                        arrayList2.add(oh3Var4);
                        arrayList2.add(oh3Var3);
                    }
                    mh3Var.setFlexLines(arrayList2);
                    return;
                }
                if (alignContent == 5 && sumOfCrossSize < size) {
                    float size6 = (size - sumOfCrossSize) / flexLinesInternal.size();
                    int size7 = flexLinesInternal.size();
                    float f3 = 0.0f;
                    while (i4 < size7) {
                        oh3 oh3Var5 = (oh3) flexLinesInternal.get(i4);
                        float f4 = oh3Var5.g + size6;
                        if (i4 == flexLinesInternal.size() - 1) {
                            f4 += f3;
                            f3 = 0.0f;
                        }
                        int iRound = Math.round(f4);
                        float f5 = (f4 - iRound) + f3;
                        if (f5 > 1.0f) {
                            iRound++;
                            f5 -= 1.0f;
                        } else if (f5 < -1.0f) {
                            iRound--;
                            f5 += 1.0f;
                        }
                        f3 = f5;
                        oh3Var5.g = iRound;
                        i4++;
                    }
                }
            }
        }
    }

    public void h(int i, int i2, int i3) {
        int size;
        int paddingLeft;
        int paddingRight;
        rh3 rh3Var;
        int i4;
        int i5;
        mh3 mh3Var = (mh3) this.a;
        int flexItemCount = mh3Var.getFlexItemCount();
        boolean[] zArr = (boolean[]) this.b;
        if (zArr == null) {
            this.b = new boolean[Math.max(flexItemCount, 10)];
        } else if (zArr.length < flexItemCount) {
            this.b = new boolean[Math.max(zArr.length * 2, flexItemCount)];
        } else {
            Arrays.fill(zArr, false);
        }
        if (i3 >= mh3Var.getFlexItemCount()) {
            return;
        }
        int flexDirection = mh3Var.getFlexDirection();
        int flexDirection2 = mh3Var.getFlexDirection();
        if (flexDirection2 == 0 || flexDirection2 == 1) {
            int mode = View.MeasureSpec.getMode(i);
            size = View.MeasureSpec.getSize(i);
            int largestMainSize = mh3Var.getLargestMainSize();
            if (mode != 1073741824) {
                size = Math.min(largestMainSize, size);
            }
            paddingLeft = mh3Var.getPaddingLeft();
            paddingRight = mh3Var.getPaddingRight();
        } else {
            if (flexDirection2 != 2 && flexDirection2 != 3) {
                c6.f(fz5.j(flexDirection, "Invalid flex direction: "));
                return;
            }
            int mode2 = View.MeasureSpec.getMode(i2);
            size = View.MeasureSpec.getSize(i2);
            if (mode2 != 1073741824) {
                size = mh3Var.getLargestMainSize();
            }
            paddingLeft = mh3Var.getPaddingTop();
            paddingRight = mh3Var.getPaddingBottom();
        }
        int i6 = paddingRight + paddingLeft;
        int i7 = size;
        int[] iArr = (int[]) this.c;
        int i8 = iArr != null ? iArr[i3] : 0;
        List flexLinesInternal = mh3Var.getFlexLinesInternal();
        int size2 = flexLinesInternal.size();
        while (i8 < size2) {
            oh3 oh3Var = (oh3) flexLinesInternal.get(i8);
            int i9 = oh3Var.e;
            if (i9 >= i7 || !oh3Var.q) {
                rh3Var = this;
                i4 = i;
                i5 = i2;
                if (i9 > i7 && oh3Var.r) {
                    rh3Var.s(i4, i5, oh3Var, i7, i6, false);
                }
            } else {
                rh3Var = this;
                i4 = i;
                i5 = i2;
                rh3Var.l(i4, i5, oh3Var, i7, i6, false);
            }
            i8++;
            this = rh3Var;
            i = i4;
            i2 = i5;
        }
    }

    public void i(int i) {
        int[] iArr = (int[]) this.c;
        if (iArr == null) {
            this.c = new int[Math.max(i, 10)];
        } else if (iArr.length < i) {
            this.c = Arrays.copyOf((int[]) this.c, Math.max(iArr.length * 2, i));
        }
    }

    public void j(int i) {
        long[] jArr = (long[]) this.d;
        if (jArr == null) {
            this.d = new long[Math.max(i, 10)];
        } else if (jArr.length < i) {
            this.d = Arrays.copyOf((long[]) this.d, Math.max(jArr.length * 2, i));
        }
    }

    public void k(int i) {
        long[] jArr = (long[]) this.e;
        if (jArr == null) {
            this.e = new long[Math.max(i, 10)];
        } else if (jArr.length < i) {
            this.e = Arrays.copyOf((long[]) this.e, Math.max(jArr.length * 2, i));
        }
    }

    public void l(int i, int i2, oh3 oh3Var, int i3, int i4, boolean z) {
        int i5;
        float f;
        int iMax;
        double d;
        double d2;
        mh3 mh3Var = (mh3) this.a;
        float f2 = oh3Var.j;
        float f3 = 0.0f;
        if (f2 <= 0.0f || i3 < (i5 = oh3Var.e)) {
            return;
        }
        float f4 = (i3 - i5) / f2;
        oh3Var.e = i4 + oh3Var.f;
        if (!z) {
            oh3Var.g = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        }
        int i6 = 0;
        boolean z2 = false;
        int i7 = 0;
        float f5 = 0.0f;
        while (i6 < oh3Var.h) {
            int i8 = oh3Var.o + i6;
            View viewB = mh3Var.b(i8);
            if (viewB == null || viewB.getVisibility() == 8) {
                f = f3;
                f4 = f4;
                z2 = z2;
            } else {
                nh3 nh3Var = (nh3) viewB.getLayoutParams();
                int flexDirection = mh3Var.getFlexDirection();
                f = f3;
                if (flexDirection == 0 || flexDirection == 1) {
                    f4 = f4;
                    boolean z3 = z2;
                    int measuredWidth = viewB.getMeasuredWidth();
                    long[] jArr = (long[]) this.e;
                    if (jArr != null) {
                        measuredWidth = (int) jArr[i8];
                    }
                    int measuredHeight = viewB.getMeasuredHeight();
                    long[] jArr2 = (long[]) this.e;
                    if (jArr2 != null) {
                        measuredHeight = (int) (jArr2[i8] >> 32);
                    }
                    if (((boolean[]) this.b)[i8] || nh3Var.r() <= f) {
                        z2 = z3;
                    } else {
                        float fR = (nh3Var.r() * f4) + measuredWidth;
                        if (i6 == oh3Var.h - 1) {
                            fR += f5;
                            f5 = f;
                        }
                        int iRound = Math.round(fR);
                        if (iRound > nh3Var.A()) {
                            iRound = nh3Var.A();
                            ((boolean[]) this.b)[i8] = true;
                            oh3Var.j -= nh3Var.r();
                            z2 = true;
                        } else {
                            float f6 = (fR - iRound) + f5;
                            double d3 = f6;
                            if (d3 > 1.0d) {
                                iRound++;
                                d = d3 - 1.0d;
                            } else {
                                if (d3 < -1.0d) {
                                    iRound--;
                                    d = d3 + 1.0d;
                                }
                                f5 = f6;
                                z2 = z3;
                            }
                            f6 = (float) d;
                            f5 = f6;
                            z2 = z3;
                        }
                        int iM = m(i2, nh3Var, oh3Var.m);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        viewB.measure(iMakeMeasureSpec, iM);
                        int measuredWidth2 = viewB.getMeasuredWidth();
                        int measuredHeight2 = viewB.getMeasuredHeight();
                        x(i8, iMakeMeasureSpec, iM, viewB);
                        mh3Var.i(viewB, i8);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i7, mh3Var.k(viewB) + nh3Var.j() + nh3Var.o() + measuredHeight);
                    oh3Var.e = nh3Var.t() + nh3Var.k() + measuredWidth + oh3Var.e;
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = viewB.getMeasuredHeight();
                    long[] jArr3 = (long[]) this.e;
                    if (jArr3 != null) {
                        measuredHeight3 = (int) (jArr3[i8] >> 32);
                    }
                    int measuredWidth3 = viewB.getMeasuredWidth();
                    long[] jArr4 = (long[]) this.e;
                    if (jArr4 != null) {
                        measuredWidth3 = (int) jArr4[i8];
                    }
                    if (((boolean[]) this.b)[i8] || nh3Var.r() <= f) {
                        f4 = f4;
                        z2 = z2;
                    } else {
                        float fR2 = (nh3Var.r() * f4) + measuredHeight3;
                        if (i6 == oh3Var.h - 1) {
                            fR2 += f5;
                            f5 = f;
                        }
                        int iRound2 = Math.round(fR2);
                        if (iRound2 > nh3Var.y()) {
                            iRound2 = nh3Var.y();
                            ((boolean[]) this.b)[i8] = true;
                            oh3Var.j -= nh3Var.r();
                            z2 = true;
                        } else {
                            float f7 = (fR2 - iRound2) + f5;
                            boolean z4 = z2;
                            double d4 = f7;
                            if (d4 > 1.0d) {
                                iRound2++;
                                d2 = d4 - 1.0d;
                            } else {
                                if (d4 < -1.0d) {
                                    iRound2--;
                                    d2 = d4 + 1.0d;
                                }
                                f5 = f7;
                                z2 = z4;
                            }
                            f7 = (float) d2;
                            f5 = f7;
                            z2 = z4;
                        }
                        int iN = n(i, nh3Var, oh3Var.m);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iRound2, 1073741824);
                        viewB.measure(iN, iMakeMeasureSpec2);
                        int measuredWidth4 = viewB.getMeasuredWidth();
                        int measuredHeight4 = viewB.getMeasuredHeight();
                        x(i8, iN, iMakeMeasureSpec2, viewB);
                        mh3Var.i(viewB, i8);
                        measuredWidth3 = measuredWidth4;
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i7, mh3Var.k(viewB) + nh3Var.t() + nh3Var.k() + measuredWidth3);
                    oh3Var.e = nh3Var.j() + nh3Var.o() + measuredHeight3 + oh3Var.e;
                }
                oh3Var.g = Math.max(oh3Var.g, iMax);
                i7 = iMax;
            }
            i6++;
            f3 = f;
            f4 = f4;
        }
        if (!z2 || i5 == oh3Var.e) {
            return;
        }
        l(i, i2, oh3Var, i3, i4, true);
    }

    public int m(int i, nh3 nh3Var, int i2) {
        mh3 mh3Var = (mh3) this.a;
        int iG = mh3Var.g(i, nh3Var.j() + nh3Var.o() + mh3Var.getPaddingBottom() + mh3Var.getPaddingTop() + i2, nh3Var.a());
        int size = View.MeasureSpec.getSize(iG);
        if (size > nh3Var.y()) {
            return View.MeasureSpec.makeMeasureSpec(nh3Var.y(), View.MeasureSpec.getMode(iG));
        }
        return size < nh3Var.w() ? View.MeasureSpec.makeMeasureSpec(nh3Var.w(), View.MeasureSpec.getMode(iG)) : iG;
    }

    public int n(int i, nh3 nh3Var, int i2) {
        mh3 mh3Var = (mh3) this.a;
        int iC = mh3Var.c(i, nh3Var.t() + nh3Var.k() + mh3Var.getPaddingRight() + mh3Var.getPaddingLeft() + i2, nh3Var.b());
        int size = View.MeasureSpec.getSize(iC);
        if (size > nh3Var.A()) {
            return View.MeasureSpec.makeMeasureSpec(nh3Var.A(), View.MeasureSpec.getMode(iC));
        }
        return size < nh3Var.h() ? View.MeasureSpec.makeMeasureSpec(nh3Var.h(), View.MeasureSpec.getMode(iC)) : iC;
    }

    public String o() {
        String string;
        String string2;
        Editable text = ((TextInputEditText) this.c).getText();
        if (text == null || (string = text.toString()) == null || (string2 = nq7.H0(string).toString()) == null || (string2.length() <= 0 && nq7.j0(string2))) {
            return null;
        }
        return string2;
    }

    public void p(View view, oh3 oh3Var, int i, int i2, int i3, int i4) {
        nh3 nh3Var = (nh3) view.getLayoutParams();
        mh3 mh3Var = (mh3) this.a;
        int alignItems = mh3Var.getAlignItems();
        if (nh3Var.d() != -1) {
            alignItems = nh3Var.d();
        }
        int i5 = oh3Var.g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (mh3Var.getFlexWrap() != 2) {
                    int i6 = i2 + i5;
                    view.layout(i, (i6 - view.getMeasuredHeight()) - nh3Var.j(), i3, i6 - nh3Var.j());
                    return;
                }
                int measuredHeight = view.getMeasuredHeight();
                int iO = nh3Var.o() + measuredHeight + (i2 - i5);
                int measuredHeight2 = view.getMeasuredHeight();
                view.layout(i, iO, i3, nh3Var.o() + measuredHeight2 + (i4 - i5));
                return;
            }
            if (alignItems == 2) {
                int iO2 = ((nh3Var.o() + (i5 - view.getMeasuredHeight())) - nh3Var.j()) / 2;
                if (mh3Var.getFlexWrap() != 2) {
                    int i7 = i2 + iO2;
                    view.layout(i, i7, i3, view.getMeasuredHeight() + i7);
                    return;
                } else {
                    int i8 = i2 - iO2;
                    view.layout(i, i8, i3, view.getMeasuredHeight() + i8);
                    return;
                }
            }
            if (alignItems == 3) {
                int flexWrap = mh3Var.getFlexWrap();
                int i9 = oh3Var.l;
                if (flexWrap != 2) {
                    int iMax = Math.max(i9 - view.getBaseline(), nh3Var.o());
                    view.layout(i, i2 + iMax, i3, i4 + iMax);
                    return;
                } else {
                    int iMax2 = Math.max(view.getBaseline() + (i9 - view.getMeasuredHeight()), nh3Var.j());
                    view.layout(i, i2 - iMax2, i3, i4 - iMax2);
                    return;
                }
            }
            if (alignItems != 4) {
                return;
            }
        }
        if (mh3Var.getFlexWrap() != 2) {
            view.layout(i, nh3Var.o() + i2, i3, nh3Var.o() + i4);
        } else {
            view.layout(i, i2 - nh3Var.j(), i3, i4 - nh3Var.j());
        }
    }

    public void q(View view, oh3 oh3Var, boolean z, int i, int i2, int i3, int i4) {
        nh3 nh3Var = (nh3) view.getLayoutParams();
        int alignItems = ((mh3) this.a).getAlignItems();
        if (nh3Var.d() != -1) {
            alignItems = nh3Var.d();
        }
        int i5 = oh3Var.g;
        if (alignItems != 0) {
            if (alignItems == 1) {
                if (!z) {
                    view.layout(((i + i5) - view.getMeasuredWidth()) - nh3Var.t(), i2, ((i3 + i5) - view.getMeasuredWidth()) - nh3Var.t(), i4);
                    return;
                }
                int measuredWidth = view.getMeasuredWidth();
                view.layout(nh3Var.k() + measuredWidth + (i - i5), i2, nh3Var.k() + view.getMeasuredWidth() + (i3 - i5), i4);
                return;
            }
            if (alignItems == 2) {
                ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) view.getLayoutParams();
                int marginStart = ((marginLayoutParams.getMarginStart() + (i5 - view.getMeasuredWidth())) - marginLayoutParams.getMarginEnd()) / 2;
                if (z) {
                    view.layout(i - marginStart, i2, i3 - marginStart, i4);
                    return;
                } else {
                    view.layout(i + marginStart, i2, i3 + marginStart, i4);
                    return;
                }
            }
            if (alignItems != 3 && alignItems != 4) {
                return;
            }
        }
        if (z) {
            view.layout(i - nh3Var.t(), i2, i3 - nh3Var.t(), i4);
        } else {
            view.layout(nh3Var.k() + i, i2, nh3Var.k() + i3, i4);
        }
    }

    public void r(id0 id0Var, za8 za8Var) {
        ya8 ya8Var = (ya8) this.e;
        oe0 oe0Var = (oe0) this.a;
        String str = (String) this.b;
        o98 o98Var = (o98) this.d;
        if (o98Var == null) {
            f6.n("Null transformer");
            return;
        }
        dw2 dw2Var = (dw2) this.c;
        sf2 sf2Var = ya8Var.c;
        oe0 oe0VarB = oe0Var.b(id0Var.b);
        jd0 jd0Var = new jd0();
        jd0Var.n = new HashMap();
        jd0Var.f = Long.valueOf(ya8Var.a.e());
        jd0Var.k = Long.valueOf(ya8Var.b.e());
        jd0Var.a = str;
        jd0Var.e = new xv2(dw2Var, (byte[]) o98Var.apply(id0Var.a));
        jd0Var.c = null;
        sf2Var.b.execute(new pf2(sf2Var, oe0VarB, za8Var, jd0Var.b(), 0));
    }

    public void s(int i, int i2, oh3 oh3Var, int i3, int i4, boolean z) {
        float f;
        boolean z2;
        int iMax;
        boolean z3;
        int iW;
        float f2;
        mh3 mh3Var = (mh3) this.a;
        int i5 = oh3Var.e;
        float f3 = oh3Var.k;
        float f4 = 0.0f;
        if (f3 <= 0.0f || i3 > i5) {
            return;
        }
        float f5 = (i5 - i3) / f3;
        oh3Var.e = i4 + oh3Var.f;
        if (!z) {
            oh3Var.g = SftpATTRS.SSH_FILEXFER_ATTR_EXTENDED;
        }
        int i6 = 0;
        boolean z4 = false;
        int i7 = 0;
        float f6 = 0.0f;
        while (i6 < oh3Var.h) {
            int i8 = oh3Var.o + i6;
            View viewB = mh3Var.b(i8);
            if (viewB == null || viewB.getVisibility() == 8) {
                f = f4;
                f5 = f5;
                z2 = z4;
                i6 = i6;
            } else {
                nh3 nh3Var = (nh3) viewB.getLayoutParams();
                int flexDirection = mh3Var.getFlexDirection();
                f = f4;
                if (flexDirection == 0 || flexDirection == 1) {
                    f5 = f5;
                    z2 = z4;
                    int measuredWidth = viewB.getMeasuredWidth();
                    long[] jArr = (long[]) this.e;
                    if (jArr != null) {
                        measuredWidth = (int) jArr[i8];
                    }
                    int measuredHeight = viewB.getMeasuredHeight();
                    long[] jArr2 = (long[]) this.e;
                    if (jArr2 != null) {
                        measuredHeight = (int) (jArr2[i8] >> 32);
                    }
                    if (((boolean[]) this.b)[i8] || nh3Var.f() <= f) {
                        i6 = i6;
                    } else {
                        float f7 = measuredWidth - (nh3Var.f() * f5);
                        if (i6 == oh3Var.h - 1) {
                            f7 += f6;
                            f6 = f;
                        }
                        int iRound = Math.round(f7);
                        if (iRound < nh3Var.h()) {
                            iRound = nh3Var.h();
                            ((boolean[]) this.b)[i8] = true;
                            oh3Var.k -= nh3Var.f();
                            z2 = true;
                        } else {
                            float f8 = (f7 - iRound) + f6;
                            double d = f8;
                            if (d > 1.0d) {
                                iRound++;
                                f8 -= 1.0f;
                            } else if (d < -1.0d) {
                                iRound--;
                                f8 += 1.0f;
                            }
                            f6 = f8;
                        }
                        int iM = m(i2, nh3Var, oh3Var.m);
                        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(iRound, 1073741824);
                        viewB.measure(iMakeMeasureSpec, iM);
                        int measuredWidth2 = viewB.getMeasuredWidth();
                        int measuredHeight2 = viewB.getMeasuredHeight();
                        x(i8, iMakeMeasureSpec, iM, viewB);
                        mh3Var.i(viewB, i8);
                        measuredWidth = measuredWidth2;
                        measuredHeight = measuredHeight2;
                    }
                    int iMax2 = Math.max(i7, mh3Var.k(viewB) + nh3Var.j() + nh3Var.o() + measuredHeight);
                    oh3Var.e = nh3Var.t() + nh3Var.k() + measuredWidth + oh3Var.e;
                    iMax = iMax2;
                } else {
                    int measuredHeight3 = viewB.getMeasuredHeight();
                    long[] jArr3 = (long[]) this.e;
                    if (jArr3 != null) {
                        measuredHeight3 = (int) (jArr3[i8] >> 32);
                    }
                    int measuredWidth3 = viewB.getMeasuredWidth();
                    long[] jArr4 = (long[]) this.e;
                    if (jArr4 != null) {
                        measuredWidth3 = (int) jArr4[i8];
                    }
                    if (((boolean[]) this.b)[i8] || nh3Var.f() <= f) {
                        z3 = z4;
                    } else {
                        float f9 = measuredHeight3 - (nh3Var.f() * f5);
                        if (i6 == oh3Var.h - 1) {
                            f9 += f6;
                            f6 = f;
                        }
                        int iRound2 = Math.round(f9);
                        if (iRound2 < nh3Var.w()) {
                            iW = nh3Var.w();
                            ((boolean[]) this.b)[i8] = true;
                            oh3Var.k -= nh3Var.f();
                            z3 = true;
                        } else {
                            float f10 = (f9 - iRound2) + f6;
                            boolean z5 = z4;
                            double d2 = f10;
                            if (d2 > 1.0d) {
                                iW = iRound2 + 1;
                                f2 = f10 - 1.0f;
                            } else if (d2 < -1.0d) {
                                iW = iRound2 - 1;
                                f2 = f10 + 1.0f;
                            } else {
                                iW = iRound2;
                                z3 = z5;
                                f6 = f10;
                            }
                            f6 = f2;
                            z3 = z5;
                        }
                        int iN = n(i, nh3Var, oh3Var.m);
                        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iW, 1073741824);
                        viewB.measure(iN, iMakeMeasureSpec2);
                        int measuredWidth4 = viewB.getMeasuredWidth();
                        int measuredHeight4 = viewB.getMeasuredHeight();
                        x(i8, iN, iMakeMeasureSpec2, viewB);
                        mh3Var.i(viewB, i8);
                        measuredWidth3 = measuredWidth4;
                        measuredHeight3 = measuredHeight4;
                    }
                    iMax = Math.max(i7, mh3Var.k(viewB) + nh3Var.t() + nh3Var.k() + measuredWidth3);
                    oh3Var.e = nh3Var.j() + nh3Var.o() + measuredHeight3 + oh3Var.e;
                    z2 = z3;
                    i6 = i6;
                }
                oh3Var.g = Math.max(oh3Var.g, iMax);
                i7 = iMax;
            }
            i6++;
            f4 = f;
            z4 = z2;
            f5 = f5;
        }
        if (!z4 || i5 == oh3Var.e) {
            return;
        }
        s(i, i2, oh3Var, i3, i4, true);
    }

    public void u(View view, int i, int i2) {
        nh3 nh3Var = (nh3) view.getLayoutParams();
        int iK = (i - nh3Var.k()) - nh3Var.t();
        mh3 mh3Var = (mh3) this.a;
        int iMin = Math.min(Math.max(iK - mh3Var.k(view), nh3Var.h()), nh3Var.A());
        long[] jArr = (long[]) this.e;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? (int) (jArr[i2] >> 32) : view.getMeasuredHeight(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec2, iMakeMeasureSpec);
        x(i2, iMakeMeasureSpec2, iMakeMeasureSpec, view);
        mh3Var.i(view, i2);
    }

    public void v(View view, int i, int i2) {
        nh3 nh3Var = (nh3) view.getLayoutParams();
        int iO = (i - nh3Var.o()) - nh3Var.j();
        mh3 mh3Var = (mh3) this.a;
        int iMin = Math.min(Math.max(iO - mh3Var.k(view), nh3Var.w()), nh3Var.y());
        long[] jArr = (long[]) this.e;
        int iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(jArr != null ? (int) jArr[i2] : view.getMeasuredWidth(), 1073741824);
        int iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
        view.measure(iMakeMeasureSpec, iMakeMeasureSpec2);
        x(i2, iMakeMeasureSpec, iMakeMeasureSpec2, view);
        mh3Var.i(view, i2);
    }

    public void w(int i) {
        View viewB;
        mh3 mh3Var = (mh3) this.a;
        if (i >= mh3Var.getFlexItemCount()) {
            return;
        }
        int flexDirection = mh3Var.getFlexDirection();
        if (mh3Var.getAlignItems() != 4) {
            for (oh3 oh3Var : mh3Var.getFlexLinesInternal()) {
                for (Integer num : oh3Var.n) {
                    View viewB2 = mh3Var.b(num.intValue());
                    if (flexDirection == 0 || flexDirection == 1) {
                        v(viewB2, oh3Var.g, num.intValue());
                    } else {
                        if (flexDirection != 2 && flexDirection != 3) {
                            c6.f(fz5.j(flexDirection, "Invalid flex direction: "));
                            return;
                        }
                        u(viewB2, oh3Var.g, num.intValue());
                    }
                }
            }
            return;
        }
        int[] iArr = (int[]) this.c;
        List flexLinesInternal = mh3Var.getFlexLinesInternal();
        int size = flexLinesInternal.size();
        for (int i2 = iArr != null ? iArr[i] : 0; i2 < size; i2++) {
            oh3 oh3Var2 = (oh3) flexLinesInternal.get(i2);
            int i3 = oh3Var2.h;
            for (int i4 = 0; i4 < i3; i4++) {
                int i5 = oh3Var2.o + i4;
                if (i4 < mh3Var.getFlexItemCount() && (viewB = mh3Var.b(i5)) != null && viewB.getVisibility() != 8) {
                    nh3 nh3Var = (nh3) viewB.getLayoutParams();
                    if (nh3Var.d() == -1 || nh3Var.d() == 4) {
                        if (flexDirection == 0 || flexDirection == 1) {
                            v(viewB, oh3Var2.g, i5);
                        } else {
                            if (flexDirection != 2 && flexDirection != 3) {
                                c6.f(fz5.j(flexDirection, "Invalid flex direction: "));
                                return;
                            }
                            u(viewB, oh3Var2.g, i5);
                        }
                    }
                }
            }
        }
    }

    public void x(int i, int i2, int i3, View view) {
        long[] jArr = (long[]) this.d;
        if (jArr != null) {
            jArr[i] = (((long) i2) & 4294967295L) | (((long) i3) << 32);
        }
        long[] jArr2 = (long[]) this.e;
        if (jArr2 != null) {
            jArr2[i] = (((long) view.getMeasuredHeight()) << 32) | (((long) view.getMeasuredWidth()) & 4294967295L);
        }
    }

    public void y() {
        MaterialButton materialButton = (MaterialButton) this.d;
        String strO = o();
        materialButton.setEnabled(!(strO == null || strO.length() == 0));
    }

    public rh3(oe0 oe0Var, String str, dw2 dw2Var, o98 o98Var, ya8 ya8Var) {
        this.a = oe0Var;
        this.b = str;
        this.c = dw2Var;
        this.d = o98Var;
        this.e = ya8Var;
    }

    public rh3(mh3 mh3Var) {
        this.a = mh3Var;
    }
}
