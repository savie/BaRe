package defpackage;

import android.graphics.drawable.Drawable;
import android.view.MenuItem;
import android.view.View;
import com.google.android.material.button.MaterialButton;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.home.HomeActivity;
import org.swiftapps.swiftbackup.home.schedule.data.ScheduleItem;
import org.swiftapps.swiftbackup.home.schedule.data.b;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class za4 implements View.OnClickListener {
    public final /* synthetic */ int a;
    public final /* synthetic */ gm7 b;
    public final /* synthetic */ jl0 c;
    public final /* synthetic */ fh6 d;

    public /* synthetic */ za4(gm7 gm7Var, jl0 jl0Var, fh6 fh6Var, int i) {
        this.a = i;
        this.b = gm7Var;
        this.c = jl0Var;
        this.d = fh6Var;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        Integer numValueOf;
        int i = this.a;
        fh6 fh6Var = this.d;
        jl0 jl0Var = this.c;
        gm7 gm7Var = this.b;
        switch (i) {
            case 0:
                xa4 xa4Var = (xa4) jl0Var;
                ab4 ab4Var = (ab4) fh6Var;
                qt3 qt3Var = ((bb4) gm7Var).j;
                if (qt3Var != null) {
                    qt3Var.invoke(xa4Var, Integer.valueOf(ab4Var.b()));
                }
                break;
            default:
                j57 j57Var = (j57) gm7Var;
                ScheduleItem scheduleItem = ((b) jl0Var).q;
                MaterialButton materialButton = ((g57) fh6Var).A;
                HomeActivity homeActivity = j57Var.l;
                u45 u45Var = new u45(homeActivity, materialButton, 12);
                materialButton.setChecked(true);
                u45Var.f = new bb(materialButton, 7);
                u45Var.f(R.menu.menu_schedule_item);
                fc5 fc5Var = (fc5) u45Var.c;
                fc5Var.getClass();
                int size = fc5Var.f.size();
                int i2 = 0;
                while (true) {
                    int i3 = 2;
                    if (i2 >= size) {
                        u45Var.e = new jq0(i3, j57Var, scheduleItem);
                        u45Var.j();
                    } else {
                        MenuItem item = fc5Var.getItem(i2);
                        int itemId = item.getItemId();
                        if (itemId == R.id.action_run_schedule) {
                            item.setVisible(scheduleItem.canRunManually());
                            item.setEnabled(scheduleItem.canRunManually());
                        } else if (itemId == R.id.action_goto_activity) {
                            int i4 = i57.a[scheduleItem.getItemType().ordinal()];
                            if (i4 == 1) {
                                numValueOf = Integer.valueOf(R.string.configs);
                            } else if (i4 != 2) {
                                numValueOf = i4 != 3 ? null : Integer.valueOf(R.string.quick_actions);
                            } else {
                                numValueOf = Integer.valueOf(R.string.app_labels);
                            }
                            item.setVisible(numValueOf != null);
                            if (numValueOf != null) {
                                item.setTitle(homeActivity.getString(numValueOf.intValue()));
                            }
                        } else if (itemId == R.id.action_delete) {
                            Drawable icon = item.getIcon();
                            icon.getClass();
                            int iR = sz8.r(homeActivity);
                            Drawable drawableMutate = icon.mutate();
                            drawableMutate.getClass();
                            drawableMutate.setTint(iR);
                            item.setIcon(drawableMutate);
                        }
                        i2++;
                    }
                    break;
                }
                break;
        }
    }
}
