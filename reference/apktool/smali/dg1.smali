.class public final Ldg1;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Ldg1;->a:I

    .line 2
    .line 3
    iput-object p2, p0, Ldg1;->b:Ljava/lang/Object;

    .line 4
    .line 5
    iput-object p3, p0, Ldg1;->c:Ljava/lang/Object;

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 9
    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Ldg1;->a:I

    .line 2
    .line 3
    iget-object v1, p0, Ldg1;->c:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object p0, p0, Ldg1;->b:Ljava/lang/Object;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    check-cast p0, Landroid/content/Context;

    .line 11
    .line 12
    check-cast v1, Lx36;

    .line 13
    .line 14
    iget-object v0, v1, Lx36;->a:Ljava/lang/String;

    .line 15
    .line 16
    const-string v1, ".preferences_pb"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p0, v0}, Lji8;->i(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :pswitch_0
    check-cast v1, Los4;

    .line 28
    .line 29
    invoke-interface {v1}, Los4;->getValue()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Lzl8;

    .line 34
    .line 35
    instance-of v1, v0, Lw24;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    check-cast v0, Lw24;

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    const/4 v0, 0x0

    .line 43
    :goto_0
    if-eqz v0, :cond_1

    .line 44
    .line 45
    invoke-interface {v0}, Lw24;->getDefaultViewModelProviderFactory()Lwl8;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    :cond_1
    check-cast p0, Lgg1;

    .line 52
    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/o;->getDefaultViewModelProviderFactory()Lwl8;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    :cond_2
    return-object v0

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
