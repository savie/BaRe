.class public final Lys7;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Lorg/swiftapps/swiftbackup/SwiftApp;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/SwiftApp;Ljv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lys7;->a:Lorg/swiftapps/swiftbackup/SwiftApp;

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
    new-instance p1, Lys7;

    .line 2
    .line 3
    iget-object p0, p0, Lys7;->a:Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 4
    .line 5
    invoke-direct {p1, p0, p2}, Lys7;-><init>(Lorg/swiftapps/swiftbackup/SwiftApp;Ljv1;)V

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
    invoke-virtual {p0, p1, p2}, Lys7;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lys7;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lys7;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lvr6;->INSTANCE:Lvr6;

    .line 5
    .line 6
    invoke-static {}, Lorg/swiftapps/swiftbackup/common/Const;->l()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v2

    .line 10
    const/4 v4, 0x4

    .line 11
    const/4 v5, 0x0

    .line 12
    const-string v1, "App info"

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static/range {v0 .. v5}, Lvr6;->i$default(Lvr6;Ljava/lang/String;Ljava/lang/String;Lvr6$a;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lb67;->c()Z

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget-object p0, p0, Lys7;->a:Lorg/swiftapps/swiftbackup/SwiftApp;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/SwiftApp;->a(Lorg/swiftapps/swiftbackup/SwiftApp;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    invoke-static {}, Lb67;->f()Z

    .line 30
    .line 31
    .line 32
    move-result p1

    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-static {p0}, Lorg/swiftapps/swiftbackup/SwiftApp;->b(Lorg/swiftapps/swiftbackup/SwiftApp;)V

    .line 36
    .line 37
    .line 38
    :cond_1
    sget-object p0, Lbe8;->a:Lbe8;

    .line 39
    .line 40
    return-object p0
.end method
