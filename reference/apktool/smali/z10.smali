.class public final synthetic Lz10;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lbt3;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Z

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;ZZI)V
    .locals 0

    .line 1
    iput p4, p0, Lz10;->a:I

    .line 2
    .line 3
    iput-object p1, p0, Lz10;->d:Ljava/lang/Object;

    .line 4
    .line 5
    iput-boolean p2, p0, Lz10;->b:Z

    .line 6
    .line 7
    iput-boolean p3, p0, Lz10;->c:Z

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 6

    .line 1
    iget v0, p0, Lz10;->a:I

    .line 2
    .line 3
    sget-object v1, Lbe8;->a:Lbe8;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-boolean v3, p0, Lz10;->c:Z

    .line 7
    .line 8
    iget-boolean v4, p0, Lz10;->b:Z

    .line 9
    .line 10
    iget-object p0, p0, Lz10;->d:Ljava/lang/Object;

    .line 11
    .line 12
    packed-switch v0, :pswitch_data_0

    .line 13
    .line 14
    .line 15
    check-cast p0, Lnp3;

    .line 16
    .line 17
    iget-object v0, p0, Lnp3;->i:Ldv;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    iget-object p0, p0, Lnp3;->j:Lmp3;

    .line 22
    .line 23
    if-nez v4, :cond_1

    .line 24
    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v3, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    const/4 v3, 0x1

    .line 31
    :goto_1
    invoke-virtual {v0, v4, p0, v3, v2}, Ldv;->g(ZLgk6;ZZ)V

    .line 32
    .line 33
    .line 34
    return-object v1

    .line 35
    :cond_2
    const-string p0, "repo"

    .line 36
    .line 37
    invoke-static {p0}, Lpe4;->F(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const/4 p0, 0x0

    .line 41
    throw p0

    .line 42
    :pswitch_0
    check-cast p0, Lorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;

    .line 43
    .line 44
    new-instance v0, Lfh2;

    .line 45
    .line 46
    new-instance v5, La20;

    .line 47
    .line 48
    invoke-direct {v5, v3, p0}, La20;-><init>(ZLorg/swiftapps/swiftbackup/appslist/ui/listbatch/AppsBatchActivity;)V

    .line 49
    .line 50
    .line 51
    invoke-direct {v0, p0, v4, v5}, Lfh2;-><init>(Lio1;ZLa20;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, p0, v2, v2}, Lol1;->F(Lk28;ZZ)V

    .line 55
    .line 56
    .line 57
    return-object v1

    .line 58
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
