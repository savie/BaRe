.class public final synthetic Lx42;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;


# direct methods
.method public synthetic constructor <init>(Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lx42;->a:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 1
    sget p2, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->P0:I

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lx42;->a:Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;

    .line 7
    .line 8
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->l0()Lm62;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    invoke-virtual {p0}, Lorg/swiftapps/swiftbackup/cloud/connect/CsActivity;->m0()Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-virtual {p1, p0}, Lm62;->l(Lorg/swiftapps/swiftbackup/cloud/protocols/CloudCredentials;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method
