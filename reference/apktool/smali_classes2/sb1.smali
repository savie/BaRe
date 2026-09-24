.class public final Lsb1;
.super Lws7;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lqt3;


# instance fields
.field public final synthetic a:Ltb1;

.field public final synthetic b:Z


# direct methods
.method public constructor <init>(Ltb1;ZLjv1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lsb1;->a:Ltb1;

    .line 2
    .line 3
    iput-boolean p2, p0, Lsb1;->b:Z

    .line 4
    .line 5
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lws7;-><init>(ILjv1;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Ljv1;)Ljv1;
    .locals 1

    .line 1
    new-instance p1, Lsb1;

    .line 2
    .line 3
    iget-object v0, p0, Lsb1;->a:Ltb1;

    .line 4
    .line 5
    iget-boolean p0, p0, Lsb1;->b:Z

    .line 6
    .line 7
    invoke-direct {p1, v0, p0, p2}, Lsb1;-><init>(Ltb1;ZLjv1;)V

    .line 8
    .line 9
    .line 10
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
    invoke-virtual {p0, p1, p2}, Lsb1;->create(Ljava/lang/Object;Ljv1;)Ljv1;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Lsb1;

    .line 10
    .line 11
    sget-object p1, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lsb1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p1}, Llg7;->H(Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lsb1;->a:Ltb1;

    .line 5
    .line 6
    iget-boolean p0, p0, Lsb1;->b:Z

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Ltb1;->a(Z)Lorg/swiftapps/swiftbackup/cloud/model/CloudResult;

    .line 9
    .line 10
    .line 11
    sget-object p0, Lbe8;->a:Lbe8;

    .line 12
    .line 13
    return-object p0
.end method
