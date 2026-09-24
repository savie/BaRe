.class public final Lo27;
.super Lxo4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final i:Lp27;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lyl0;-><init>(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    new-instance p1, Lp27;

    .line 5
    .line 6
    invoke-direct {p1}, Lp27;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Lo27;->i:Lp27;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final g(Lwo4;F)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p1, Lwo4;->b:Ljava/lang/Object;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p1, Lwo4;->c:Ljava/lang/Object;

    .line 6
    .line 7
    if-eqz v1, :cond_1

    .line 8
    .line 9
    check-cast v0, Lp27;

    .line 10
    .line 11
    check-cast v1, Lp27;

    .line 12
    .line 13
    iget-object v2, p0, Lyl0;->e:Lcd;

    .line 14
    .line 15
    if-eqz v2, :cond_0

    .line 16
    .line 17
    iget-object p1, p1, Lwo4;->h:Ljava/lang/Float;

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lyl0;->e()F

    .line 23
    .line 24
    .line 25
    invoke-virtual {v2, v0, v1}, Lcd;->f(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    check-cast p1, Lp27;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    return-object p1

    .line 34
    :cond_0
    iget p1, v0, Lp27;->a:F

    .line 35
    .line 36
    iget v2, v1, Lp27;->a:F

    .line 37
    .line 38
    invoke-static {p1, v2, p2}, Lsg5;->d(FFF)F

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget v0, v0, Lp27;->b:F

    .line 43
    .line 44
    iget v1, v1, Lp27;->b:F

    .line 45
    .line 46
    invoke-static {v0, v1, p2}, Lsg5;->d(FFF)F

    .line 47
    .line 48
    .line 49
    move-result p2

    .line 50
    iget-object p0, p0, Lo27;->i:Lp27;

    .line 51
    .line 52
    iput p1, p0, Lp27;->a:F

    .line 53
    .line 54
    iput p2, p0, Lp27;->b:F

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_1
    const-string p0, "Missing values for keyframe."

    .line 58
    .line 59
    invoke-static {p0}, Ll0;->e(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    const/4 p0, 0x0

    .line 63
    return-object p0
.end method
