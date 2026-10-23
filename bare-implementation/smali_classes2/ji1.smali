.class public final synthetic Lji1;
.super Lcu3;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    iput p7, p0, Lji1;->a:I

    .line 2
    .line 3
    invoke-direct/range {p0 .. p6}, Lbu3;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lji1;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast p0, Lokhttp3/Response;

    .line 11
    .line 12
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 13
    .line 14
    .line 15
    return-object v1

    .line 16
    :pswitch_0
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Lokhttp3/Response;

    .line 19
    .line 20
    invoke-virtual {p0}, Lokhttp3/Response;->close()V

    .line 21
    .line 22
    .line 23
    return-object v1

    .line 24
    :pswitch_1
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast p0, Ldz5;

    .line 27
    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    .line 30
    .line 31
    invoke-static {}, Ldz5;->d()Z

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    return-object p0

    .line 40
    :pswitch_2
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 41
    .line 42
    check-cast p0, Lik0;

    .line 43
    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 45
    .line 46
    .line 47
    invoke-static {}, Lg00;->r()Landroid/content/pm/PackageManager;

    .line 48
    .line 49
    .line 50
    move-result-object p0

    .line 51
    const-string v0, "android.hardware.telephony"

    .line 52
    .line 53
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    return-object p0

    .line 62
    :pswitch_3
    iget-object p0, p0, Luz0;->receiver:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Ltb1;

    .line 65
    .line 66
    invoke-virtual {p0}, Ltb1;->m()Ljm1;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    return-object p0

    .line 71
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
