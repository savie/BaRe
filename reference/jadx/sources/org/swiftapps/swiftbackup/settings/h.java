package org.swiftapps.swiftbackup.settings;

import android.content.Context;
import android.widget.RadioGroup;
import android.widget.TextView;
import androidx.appcompat.widget.LinearLayoutCompat;
import androidx.constraintlayout.widget.ConstraintLayout;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.slider.Slider;
import defpackage.cj5;
import defpackage.eh2;
import defpackage.gf1;
import defpackage.hw;
import defpackage.mt3;
import defpackage.q;
import defpackage.sz8;
import defpackage.tu0;
import defpackage.uf1;
import defpackage.zi5;
import java.util.ArrayList;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.settings.MultipleBackupStrategy;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final class h {
    public final cj5 a;
    public final /* synthetic */ MultipleBackupsActivity b;

    public h(MultipleBackupsActivity multipleBackupsActivity, cj5 cj5Var) {
        this.b = multipleBackupsActivity;
        this.a = cj5Var;
    }

    public static /* synthetic */ void b(h hVar, MultipleBackupStrategy multipleBackupStrategy, boolean z, mt3 mt3Var, eh2 eh2Var, int i) {
        mt3 gf1Var = eh2Var;
        if ((i & 8) != 0) {
            gf1Var = new gf1(3);
        }
        hVar.a(multipleBackupStrategy, z, mt3Var, gf1Var, new hw(5));
    }

    public final void a(MultipleBackupStrategy multipleBackupStrategy, boolean z, mt3 mt3Var, mt3 mt3Var2, final mt3 mt3Var3) {
        int id;
        multipleBackupStrategy.getClass();
        mt3Var2.getClass();
        cj5 cj5Var = this.a;
        ConstraintLayout constraintLayout = cj5Var.c;
        RadioGroup radioGroup = cj5Var.k;
        LinearLayoutCompat linearLayoutCompat = cj5Var.b;
        MaterialCardView materialCardView = cj5Var.a;
        Context context = materialCardView.getContext();
        materialCardView.setStrokeWidth(tu0.v(context.getResources().getDimension(z ? R.dimen.card_stroke_width_selected : R.dimen.card_stroke_width)));
        materialCardView.setStrokeColor(context.getColor(sz8.y(context, z ? R.attr.colorPrimary : R.attr.cardStrokeColor)));
        MultipleBackupStrategy.Representation representationA = f.a(multipleBackupStrategy);
        TextView textView = cj5Var.r;
        textView.setTextColor(z ? sz8.x(context) : sz8.z(context));
        textView.setText(MultipleBackupStrategy.Representation.displayTitle$default(representationA, false, 1, null));
        cj5Var.q.setText(MultipleBackupStrategy.Representation.displaySubtitle$default(representationA, false, 1, null));
        if (representationA.isSingleBackup()) {
            constraintLayout.setVisibility(8);
            linearLayoutCompat.setVisibility(8);
        } else {
            if (z) {
                constraintLayout.setVisibility(0);
                Slider slider = cj5Var.n;
                ArrayList arrayList = slider.x;
                this.b.R.put(Integer.valueOf(slider.getId()), slider);
                if (slider.getValueFrom() != 2.0f) {
                    slider.setValueFrom(2.0f);
                }
                if (slider.getValueTo() != 10.0f) {
                    slider.setValueTo(10.0f);
                }
                if (slider.getStepSize() != 1.0f) {
                    slider.setStepSize(1.0f);
                }
                float maxNumOfBackups = representationA.getMaxNumOfBackups();
                if (slider.getValue() != maxNumOfBackups) {
                    slider.setValue(maxNumOfBackups);
                }
                arrayList.clear();
                arrayList.add(new zi5(mt3Var2, this));
            } else {
                constraintLayout.setVisibility(8);
            }
            cj5Var.p.setText(String.valueOf(representationA.getMaxNumOfBackups()));
            if (z && (representationA instanceof MultipleBackupStrategy.Representation.ConditionalBackups)) {
                linearLayoutCompat.setVisibility(0);
                int i = g.a[((MultipleBackupStrategy.Representation.ConditionalBackups) representationA).getCondition().ordinal()];
                if (i == 1) {
                    id = cj5Var.e.getId();
                } else if (i == 2) {
                    id = cj5Var.f.getId();
                } else {
                    if (i != 3) {
                        q.j();
                        return;
                    }
                    id = cj5Var.d.getId();
                }
                if (radioGroup.getCheckedRadioButtonId() != id) {
                    radioGroup.check(id);
                }
            } else {
                linearLayoutCompat.setVisibility(8);
            }
            radioGroup.setOnCheckedChangeListener(new RadioGroup.OnCheckedChangeListener() { // from class: aj5
                @Override // android.widget.RadioGroup.OnCheckedChangeListener
                public final void onCheckedChanged(RadioGroup radioGroup2, int i2) {
                    MultipleBackupStrategy.NewBackupCondition newBackupCondition;
                    radioGroup2.getClass();
                    cj5 cj5Var2 = this.a;
                    if (i2 == cj5Var2.e.getId()) {
                        newBackupCondition = MultipleBackupStrategy.NewBackupCondition.ApkChanges;
                    } else if (i2 == cj5Var2.f.getId()) {
                        newBackupCondition = MultipleBackupStrategy.NewBackupCondition.DataChanges;
                    } else {
                        if (i2 != cj5Var2.d.getId()) {
                            throw new io5("RadioButton id not implemented to identify the NewBackupCondition!");
                        }
                        newBackupCondition = MultipleBackupStrategy.NewBackupCondition.ApkOrDataChanges;
                    }
                    mt3Var3.invoke(newBackupCondition);
                }
            });
        }
        materialCardView.setOnClickListener(new uf1(7, mt3Var, multipleBackupStrategy));
    }
}
