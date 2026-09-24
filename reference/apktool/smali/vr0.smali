.class public final Lvr0;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lvr0;->a:Ljava/util/Set;

    .line 2
    .line 3
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lws7;-><init>(ILjv1;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 0

    .line 1
    new-instance p1, Lvr0;

    .line 2
    .line 3
    iget-object p0, p0, Lvr0;->a:Ljava/util/Set;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lvr0;-><init>(Ljava/util/Set;Ljv1;)V

    .line 6
    .line 7
    .line 8
    return-object p1
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lxx1;

    .line 2
    .line 3
    check-cast p2, Ljv1;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lvr0;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lvr0;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lvr0;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object p1, Lgs0;->a:Lgs0;

    .line 5
    .line 6
    sget-object v0, Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;->Companion:Lds0;

    .line 7
    .line 8
    iget-object p0, p0, Lvr0;->a:Ljava/util/Set;

    .line 9
    .line 10
    invoke-static {p0}, Lel1;->v1(Ljava/lang/Iterable;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    .line 16
    .line 17
    invoke-static {p0}, Lds0;->a(Ljava/util/List;)Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, p0, v0}, Lgs0;->d(Lorg/swiftapps/swiftbackup/blacklist/data/BlacklistData;Z)V

    .line 23
    .line 24
    .line 25
    sget-object v1, Lkz4;->g:Lkz4;

    .line 26
    .line 27
    const/4 v5, 0x0

    .line 28
    const/16 v6, 0xa

    .line 29
    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    const/4 v4, 0x1

    .line 33
    invoke-static/range {v1 .. v6}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 34
    .line 35
    .line 36
    sget-object v7, Lua1;->g:Lua1;

    .line 37
    .line 38
    const/4 v11, 0x0

    .line 39
    const/16 v12, 0xa

    .line 40
    .line 41
    const/4 v8, 0x1

    .line 42
    const/4 v9, 0x0

    .line 43
    const/4 v10, 0x1

    .line 44
    invoke-static/range {v7 .. v12}, Ldv;->i(Ldv;ZLgk6;ZZI)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Lbe8;->a:Lbe8;

    .line 48
    .line 49
    return-object p0
.end method
