.class public final synthetic La52;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, La52;->a:I

    .line 2
    .line 3
    iput-object p1, p0, La52;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget p1, p0, La52;->a:I

    .line 2
    .line 3
    iget-object p0, p0, La52;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->j0()Landroid/widget/AutoCompleteTextView;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/widget/AutoCompleteTextView;->showDropDown()V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :pswitch_0
    sget p1, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 19
    .line 20
    iget-object p1, p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->F0:Lgv7;

    .line 21
    .line 22
    invoke-virtual {p1}, Lgv7;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 27
    .line 28
    if-eqz p1, :cond_0

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    if-eqz v0, :cond_0

    .line 35
    .line 36
    const-class v1, Landroid/view/inputmethod/InputMethodManager;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    const/4 v1, 0x0

    .line 47
    if-eqz v0, :cond_1

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    invoke-virtual {v0, p1, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-virtual {p0, v1, v1}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->t0(ZZ)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
