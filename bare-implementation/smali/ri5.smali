.class public final Lri5;
.super Lgs4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lmt3;


# instance fields
.field public final synthetic a:Ljava/io/File;

.field public final synthetic b:Lr76;


# direct methods
.method public constructor <init>(Ljava/io/File;Lr76;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lri5;->a:Ljava/io/File;

    .line 2
    .line 3
    iput-object p2, p0, Lri5;->b:Lr76;

    .line 4
    .line 5
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lgs4;-><init>(I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    iget-object v0, p0, Lri5;->a:Ljava/io/File;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p1, v0}, Lpe4;->d(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    sget-object v0, Lbe8;->a:Lbe8;

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p0, p0, Lri5;->b:Lr76;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lr76;->f(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    instance-of v1, p1, Lr41;

    .line 24
    .line 25
    if-nez v1, :cond_0

    .line 26
    .line 27
    check-cast p1, Lbe8;

    .line 28
    .line 29
    return-object v0

    .line 30
    :cond_0
    new-instance p1, Lu41;

    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    const/4 v2, 0x0

    .line 34
    invoke-direct {p1, p0, v2, v1}, Lu41;-><init>(Ljava/lang/Object;Ljv1;I)V

    .line 35
    .line 36
    .line 37
    sget-object p0, Llv2;->a:Llv2;

    .line 38
    .line 39
    invoke-static {p0, p1}, Ll73;->B(Lox1;Lqt3;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p0

    .line 43
    check-cast p0, Ls41;

    .line 44
    .line 45
    iget-object p0, p0, Ls41;->a:Ljava/lang/Object;

    .line 46
    .line 47
    :cond_1
    return-object v0
.end method
