.class public final synthetic Lz42;
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
    iput p2, p0, Lz42;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lz42;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

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
    .locals 0

    .line 1
    iget p1, p0, Lz42;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lz42;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

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
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->C0:Lgv7;

    .line 21
    .line 22
    invoke-virtual {p0}, Lgv7;->getValue()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 27
    .line 28
    const/4 p1, 0x0

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    .line 31
    .line 32
    return-void

    .line 33
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
