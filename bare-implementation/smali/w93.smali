.class public final Lw93;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p2, p0, Lw93;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lw93;->b:Ljava/lang/Object;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget v0, p0, Lw93;->a:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lw93;->b:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Los4;

    .line 9
    .line 10
    invoke-interface {p0}, Los4;->getValue()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    check-cast p0, Lzl8;

    .line 15
    .line 16
    invoke-interface {p0}, Lzl8;->getViewModelStore()Lyl8;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    iget-object p0, p0, Lw93;->b:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Lin2;

    .line 24
    .line 25
    invoke-interface {p0}, Lin2;->dispose()V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lbe8;->a:Lbe8;

    .line 29
    .line 30
    return-object p0

    .line 31
    :pswitch_1
    sget-object v0, Lx93;->e:Ljava/lang/Object;

    .line 32
    .line 33
    iget-object p0, p0, Lw93;->b:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Ljava/io/File;

    .line 36
    .line 37
    monitor-enter v0

    .line 38
    :try_start_0
    sget-object v1, Lx93;->d:Ljava/util/LinkedHashSet;

    .line 39
    .line 40
    invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    invoke-interface {v1, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    .line 46
    .line 47
    monitor-exit v0

    .line 48
    sget-object p0, Lbe8;->a:Lbe8;

    .line 49
    .line 50
    return-object p0

    .line 51
    :catchall_0
    move-exception p0

    .line 52
    monitor-exit v0

    .line 53
    throw p0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
