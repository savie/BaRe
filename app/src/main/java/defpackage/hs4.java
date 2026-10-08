package defpackage;

import android.content.SharedPreferences;
import android.net.wifi.WifiManager;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.core.widget.NestedScrollView;
import androidx.preference.Preference;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.dynamite.descriptors.com.google.firebase.auth.ModuleDescriptor;
import com.google.android.material.button.MaterialButton;
import com.google.android.material.card.MaterialCardView;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;
import com.jcraft.jsch.Argon2;
import java.util.Locale;
import java.util.UUID;
import org.swiftapps.swiftbackup.R;
import org.swiftapps.swiftbackup.common.Const;
import org.swiftapps.swiftbackup.database.MDatabase_Impl;
import org.swiftapps.swiftbackup.home.storageswitch.StorageSwitchActivity;
import org.swiftapps.swiftbackup.locale.LocaleActivity;
import org.swiftapps.swiftbackup.messagescalls.backups.MessagesBackupsActivity;
import org.swiftapps.swiftbackup.model.firebase.AppSettings;
import org.swiftapps.swiftbackup.notice.NoticeViewActivity;
import org.swiftapps.swiftbackup.password.PasswordStrategyActivity;
import org.swiftapps.swiftbackup.password.UserPasswordActivity;
import org.swiftapps.swiftbackup.premium.PremiumActivity;
import org.swiftapps.swiftbackup.settings.RestoreSpecialDataDetailsActivity;
import org.swiftapps.swiftbackup.settings.SettingsDetailActivity;
import org.swiftapps.swiftbackup.tasks.ui.TaskActivity;
import org.swiftapps.swiftbackup.views.QuickRecyclerView;
import org.swiftapps.swiftbackup.views.SwiftBackupMaterialSwitch;
import org.swiftapps.swiftbackup.walls.WallsDashActivity;
import org.xmlpull.v1.XmlPullParser;

/* JADX INFO: compiled from: r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0 */
/* JADX INFO: loaded from: classes2.dex */
public final /* synthetic */ class hs4 implements bt3 {
    public final /* synthetic */ int a;
    public final /* synthetic */ Object b;

    public /* synthetic */ hs4(Object obj, int i) {
        this.a = i;
        this.b = obj;
    }

    @Override // defpackage.bt3
    public final Object invoke() {
        fe5 fe5Var;
        int i = this.a;
        be8 be8Var = be8.a;
        int i2 = R.id.appbar_layout;
        Object obj = this.b;
        switch (i) {
            case 0:
                is4 is4Var = (is4) obj;
                String str = is4Var.a;
                if (pe4.d(str, "en")) {
                    return is4Var.a().getDisplayLanguage(Locale.US);
                }
                if (pe4.d(str, "zh")) {
                    return pe4.d(is4Var.b, "CN") ? "Chinese Simplified" : "Chinese Traditional";
                }
                StringBuilder sb = new StringBuilder();
                Object value = is4Var.n.getValue();
                value.getClass();
                sb.append((String) value);
                if (is4Var.c) {
                    sb.append(", " + is4Var.a().getDisplayCountry(Locale.US));
                }
                return sb.toString();
            case 1:
                return ((WifiManager) obj).getConfiguredNetworks();
            case 2:
                int i3 = LocaleActivity.P;
                View viewInflate = ((LocaleActivity) obj).getLayoutInflater().inflate(R.layout.locale_activity, (ViewGroup) null, false);
                View viewU = ms8.u(viewInflate, R.id.appbar_layout);
                if (viewU != null) {
                    w00 w00VarB = w00.b(viewU);
                    i2 = R.id.rv_locale;
                    QuickRecyclerView quickRecyclerView = (QuickRecyclerView) ms8.u(viewInflate, R.id.rv_locale);
                    if (quickRecyclerView != null) {
                        return new e05((CoordinatorLayout) viewInflate, w00VarB, quickRecyclerView);
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i2)));
                return null;
            case 3:
                return new nv6((MDatabase_Impl) obj);
            case 4:
                MessagesBackupsActivity messagesBackupsActivity = (MessagesBackupsActivity) obj;
                int i4 = MessagesBackupsActivity.T;
                if ((!messagesBackupsActivity.X().g || Const.y(messagesBackupsActivity)) && (fe5Var = (fe5) messagesBackupsActivity.X().f.d()) != null) {
                    messagesBackupsActivity.X().j(fe5Var.b, messagesBackupsActivity.X().g);
                }
                return be8Var;
            case 5:
                int i5 = NoticeViewActivity.O;
                return ((lo5) ((NoticeViewActivity) obj).L.getValue()).d;
            case 6:
                PasswordStrategyActivity passwordStrategyActivity = (PasswordStrategyActivity) obj;
                int i6 = PasswordStrategyActivity.O;
                return new vx5(passwordStrategyActivity, ((wx5) passwordStrategyActivity.L.getValue()).c);
            case 7:
                int i7 = PremiumActivity.V;
                return ((PremiumActivity) obj).R().b;
            case 8:
                ((ni8) obj).getClass();
                UUID uuidRandomUUID = UUID.randomUUID();
                uuidRandomUUID.getClass();
                String string = uuidRandomUUID.toString();
                string.getClass();
                return string;
            case XmlPullParser.COMMENT /* 9 */:
                int i8 = RestoreSpecialDataDetailsActivity.R;
                View viewInflate2 = ((RestoreSpecialDataDetailsActivity) obj).getLayoutInflater().inflate(R.layout.restore_special_data_details_activity, (ViewGroup) null, false);
                View viewU2 = ms8.u(viewInflate2, R.id.appbar_layout);
                if (viewU2 != null) {
                    w00 w00VarB2 = w00.b(viewU2);
                    i2 = R.id.container_restore_special_data;
                    MaterialCardView materialCardView = (MaterialCardView) ms8.u(viewInflate2, R.id.container_restore_special_data);
                    if (materialCardView != null) {
                        i2 = R.id.rv_details;
                        RecyclerView recyclerView = (RecyclerView) ms8.u(viewInflate2, R.id.rv_details);
                        if (recyclerView != null) {
                            i2 = R.id.scroll_view;
                            NestedScrollView nestedScrollView = (NestedScrollView) ms8.u(viewInflate2, R.id.scroll_view);
                            if (nestedScrollView != null) {
                                i2 = R.id.swch_restore_special_data;
                                SwiftBackupMaterialSwitch swiftBackupMaterialSwitch = (SwiftBackupMaterialSwitch) ms8.u(viewInflate2, R.id.swch_restore_special_data);
                                if (swiftBackupMaterialSwitch != null) {
                                    i2 = R.id.tv_restore_special_data_message;
                                    TextView textView = (TextView) ms8.u(viewInflate2, R.id.tv_restore_special_data_message);
                                    if (textView != null) {
                                        i2 = R.id.tv_restore_special_data_title;
                                        if (((TextView) ms8.u(viewInflate2, R.id.tv_restore_special_data_title)) != null) {
                                            return new xm6((CoordinatorLayout) viewInflate2, w00VarB2, materialCardView, recyclerView, nestedScrollView, swiftBackupMaterialSwitch, textView);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate2.getResources().getResourceName(i2)));
                return null;
            case 10:
                AppSettings appSettings = (AppSettings) obj;
                Integer maxSmsBackups = appSettings.getMaxSmsBackups();
                int iIntValue = maxSmsBackups != null ? maxSmsBackups.intValue() : -1;
                SharedPreferences.Editor editor = cz4.k;
                if (editor == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor.putInt("max_sms_backups", iIntValue).apply();
                Boolean backupMms = appSettings.getBackupMms();
                boolean zBooleanValue = backupMms != null ? backupMms.booleanValue() : true;
                SharedPreferences.Editor editor2 = cz4.k;
                if (editor2 == null) {
                    pe4.F("editor");
                    throw null;
                }
                editor2.putBoolean("messages_backup_mms", zBooleanValue).apply();
                Integer maxCallBackups = appSettings.getMaxCallBackups();
                int iIntValue2 = maxCallBackups != null ? maxCallBackups.intValue() : -1;
                SharedPreferences.Editor editor3 = cz4.k;
                if (editor3 != null) {
                    editor3.putInt("max_call_backups", iIntValue2).apply();
                    return be8Var;
                }
                pe4.F("editor");
                throw null;
            case ModuleDescriptor.MODULE_VERSION /* 11 */:
                int i9 = SettingsDetailActivity.R;
                return ga7.a(((SettingsDetailActivity) obj).getLayoutInflater());
            case 12:
                Preference preferenceJ = ((pa7) obj).j("language");
                preferenceJ.getClass();
                return preferenceJ;
            case 13:
                int i10 = StorageSwitchActivity.f0;
                return new qo7((StorageSwitchActivity) obj);
            case 14:
                int i11 = TaskActivity.c0;
                return new iz7((TaskActivity) obj);
            case 15:
                return ((k28) obj).getClass().getSimpleName();
            case Argon2.V10 /* 16 */:
                int i12 = UserPasswordActivity.O;
                View viewInflate3 = ((UserPasswordActivity) obj).getLayoutInflater().inflate(R.layout.user_password_activity, (ViewGroup) null, false);
                View viewU3 = ms8.u(viewInflate3, R.id.appbar_layout);
                if (viewU3 != null) {
                    w00 w00VarB3 = w00.b(viewU3);
                    i2 = R.id.btn_add_old_password;
                    MaterialButton materialButton = (MaterialButton) ms8.u(viewInflate3, R.id.btn_add_old_password);
                    if (materialButton != null) {
                        i2 = R.id.btn_done;
                        ExtendedFloatingActionButton extendedFloatingActionButton = (ExtendedFloatingActionButton) ms8.u(viewInflate3, R.id.btn_done);
                        if (extendedFloatingActionButton != null) {
                            i2 = R.id.btn_edit_active_password;
                            MaterialButton materialButton2 = (MaterialButton) ms8.u(viewInflate3, R.id.btn_edit_active_password);
                            if (materialButton2 != null) {
                                i2 = R.id.iv_active_password_indicator;
                                ImageView imageView = (ImageView) ms8.u(viewInflate3, R.id.iv_active_password_indicator);
                                if (imageView != null) {
                                    i2 = R.id.iv_clear_active_password;
                                    ImageView imageView2 = (ImageView) ms8.u(viewInflate3, R.id.iv_clear_active_password);
                                    if (imageView2 != null) {
                                        i2 = R.id.iv_clear_old_passwords;
                                        ImageView imageView3 = (ImageView) ms8.u(viewInflate3, R.id.iv_clear_old_passwords);
                                        if (imageView3 != null) {
                                            i2 = R.id.tv_active_password;
                                            if (((TextView) ms8.u(viewInflate3, R.id.tv_active_password)) != null) {
                                                i2 = R.id.tv_active_password_description;
                                                if (((TextView) ms8.u(viewInflate3, R.id.tv_active_password_description)) != null) {
                                                    i2 = R.id.tv_active_password_status;
                                                    TextView textView2 = (TextView) ms8.u(viewInflate3, R.id.tv_active_password_status);
                                                    if (textView2 != null) {
                                                        i2 = R.id.tv_old_passwords;
                                                        if (((TextView) ms8.u(viewInflate3, R.id.tv_old_passwords)) != null) {
                                                            i2 = R.id.tv_old_passwords_message;
                                                            if (((TextView) ms8.u(viewInflate3, R.id.tv_old_passwords_message)) != null) {
                                                                i2 = R.id.tv_old_passwords_status;
                                                                TextView textView3 = (TextView) ms8.u(viewInflate3, R.id.tv_old_passwords_status);
                                                                if (textView3 != null) {
                                                                    i2 = R.id.tv_restore_passwords_message;
                                                                    TextView textView4 = (TextView) ms8.u(viewInflate3, R.id.tv_restore_passwords_message);
                                                                    if (textView4 != null) {
                                                                        return new gh8((CoordinatorLayout) viewInflate3, w00VarB3, materialButton, extendedFloatingActionButton, materialButton2, imageView, imageView2, imageView3, textView2, textView3, textView4);
                                                                    }
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
                f6.n("Missing required view with ID: ".concat(viewInflate3.getResources().getResourceName(i2)));
                return null;
            default:
                WallsDashActivity wallsDashActivity = (WallsDashActivity) obj;
                int i13 = WallsDashActivity.W;
                return new uo8(wallsDashActivity, wallsDashActivity.X().e);
        }
    }
}
