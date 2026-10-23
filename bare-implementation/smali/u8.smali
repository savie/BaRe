.class public final Lu8;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 10
    iput p2, p0, Lu8;->a:I

    iput-object p1, p0, Lu8;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lvj6;Leb2;)V
    .locals 0

    .line 1
    const/4 p2, 0x1

    .line 2
    iput p2, p0, Lu8;->a:I

    .line 3
    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    .line 6
    .line 7
    iput-object p1, p0, Lu8;->b:Ljava/lang/Object;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lu8;->a:I

    .line 2
    .line 3
    iget-object p0, p0, Lu8;->b:Ljava/lang/Object;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    check-cast p0, Lom5;

    .line 9
    .line 10
    iget-object p0, p0, Lom5;->a:Ljava/lang/Object;

    .line 11
    .line 12
    check-cast p0, Lg19;

    .line 13
    .line 14
    iget-object p0, p0, Lg19;->b:Lne;

    .line 15
    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const-string v1, " disconnecting because it was signed out."

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-interface {p0, v0}, Lne;->b(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-void

    .line 34
    :pswitch_0
    check-cast p0, Lyk6;

    .line 35
    .line 36
    iget-object v0, p0, Lyk6;->c:Ltt4;

    .line 37
    .line 38
    invoke-interface {v0, p0}, Ltt4;->k(Ldu4;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :pswitch_1
    check-cast p0, Lvj6;

    .line 43
    .line 44
    iget-object p0, p0, Lvj6;->b:Lbf3;

    .line 45
    .line 46
    const/4 v0, 0x0

    .line 47
    const/4 v1, 0x1

    .line 48
    invoke-virtual {p0, v0, v1}, Lbf3;->a(Lwc2;Z)V

    .line 49
    .line 50
    .line 51
    return-void

    .line 52
    :pswitch_2
    const/16 v0, 0xa

    .line 53
    .line 54
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 55
    .line 56
    .line 57
    check-cast p0, Ljava/lang/Runnable;

    .line 58
    .line 59
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
