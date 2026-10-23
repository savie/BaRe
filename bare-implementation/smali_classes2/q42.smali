.class public final synthetic Lq42;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;I)V
    .locals 0

    .line 1
    iput p2, p0, Lq42;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lq42;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lq42;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lq42;->b:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 9
    .line 10
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lm62;->j()V

    .line 15
    .line 16
    .line 17
    sget-object p0, Lbe8;->a:Lbe8;

    .line 18
    .line 19
    return-object p0

    .line 20
    :pswitch_0
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 21
    .line 22
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    iget-object p0, p0, Lt52;->L:Lbp0;

    .line 27
    .line 28
    iget-object p0, p0, Lbp0;->b:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Lcom/google/android/material/textfield/TextInputEditText;

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_1
    sget v0, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 34
    .line 35
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->k0()Lt52;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    iget-object p0, p0, Lt52;->f:Landroid/widget/LinearLayout;

    .line 40
    .line 41
    return-object p0

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
