.class public final synthetic Lu06;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lvz0;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/util/concurrent/ArrayBlockingQueue;

.field public final synthetic c:Ljava/io/Serializable;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lh16;Ljava/util/concurrent/ArrayBlockingQueue;Ljava/security/spec/ECPoint;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lu06;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lu06;->c:Ljava/io/Serializable;

    .line 8
    .line 9
    iput-object p2, p0, Lu06;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 10
    .line 11
    iput-object p3, p0, Lu06;->d:Ljava/lang/Object;

    .line 12
    .line 13
    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/concurrent/ArrayBlockingQueue;Lvh7;Ljava/security/KeyStore$ProtectionParameter;)V
    .locals 1

    .line 14
    const/4 v0, 0x0

    iput v0, p0, Lu06;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lu06;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    iput-object p2, p0, Lu06;->c:Ljava/io/Serializable;

    iput-object p3, p0, Lu06;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget v0, p0, Lu06;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Lu06;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lu06;->b:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 6
    .line 7
    iget-object p0, p0, Lu06;->c:Ljava/io/Serializable;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast p0, Lh16;

    .line 13
    .line 14
    check-cast v1, Ljava/security/spec/ECPoint;

    .line 15
    .line 16
    check-cast p1, Lcn6;

    .line 17
    .line 18
    new-instance v0, Lg16;

    .line 19
    .line 20
    invoke-direct {v0, p0, p1, v1}, Lg16;-><init>(Lh16;Lcn6;Ljava/security/spec/ECPoint;)V

    .line 21
    .line 22
    .line 23
    invoke-static {v0}, Lcn6;->c(Ljava/util/concurrent/Callable;)Lcn6;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    return-void

    .line 31
    :pswitch_0
    check-cast p0, Lvh7;

    .line 32
    .line 33
    check-cast v1, Ljava/security/KeyStore$ProtectionParameter;

    .line 34
    .line 35
    check-cast p1, Lcn6;

    .line 36
    .line 37
    new-instance v0, Lc16;

    .line 38
    .line 39
    invoke-direct {v0, p1, p0, v1}, Lc16;-><init>(Lcn6;Lvh7;Ljava/security/KeyStore$ProtectionParameter;)V

    .line 40
    .line 41
    .line 42
    invoke-static {v0}, Lcn6;->c(Ljava/util/concurrent/Callable;)Lcn6;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
