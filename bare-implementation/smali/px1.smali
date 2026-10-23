.class public final synthetic Lpx1;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Lpx1;->a:I

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget p0, p0, Lpx1;->a:I

    .line 2
    .line 3
    packed-switch p0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p2, Lmx1;

    .line 7
    .line 8
    instance-of p0, p2, Ll28;

    .line 9
    .line 10
    if-eqz p0, :cond_3

    .line 11
    .line 12
    instance-of p0, p1, Ljava/lang/Integer;

    .line 13
    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    check-cast p1, Ljava/lang/Integer;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p1, 0x0

    .line 20
    :goto_0
    const/4 p0, 0x1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    .line 23
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move p1, p0

    .line 29
    :goto_1
    if-nez p1, :cond_2

    .line 30
    .line 31
    move-object p1, p2

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    add-int/2addr p1, p0

    .line 34
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    :cond_3
    :goto_2
    return-object p1

    .line 39
    :pswitch_0
    check-cast p1, Landroid/os/CancellationSignal;

    .line 40
    .line 41
    check-cast p2, Lbt3;

    .line 42
    .line 43
    invoke-static {p1, p2}, Landroidx/credentials/playservices/controllers/identityauth/beginsignin/CredentialProviderBeginSignInController;->$r8$lambda$yDFkb80k0YyfTzmOhBbyapDaNhs(Landroid/os/CancellationSignal;Lbt3;)Lbe8;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :pswitch_1
    check-cast p1, Lox1;

    .line 49
    .line 50
    check-cast p2, Lmx1;

    .line 51
    .line 52
    invoke-interface {p1, p2}, Lox1;->plus(Lox1;)Lox1;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    return-object p0

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
