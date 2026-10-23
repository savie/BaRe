.class public final Lno4;
.super Lnb4;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final a:Lno4;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lno4;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lno4;->a:Lno4;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ".key"

    .line 2
    .line 3
    return-object p0
.end method

.method public final b(Lqn5;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
.end method

.method public final c(Lm61;Lqn5;)Lhk5;
    .locals 0

    .line 1
    instance-of p0, p2, Lfq7;

    .line 2
    .line 3
    invoke-static {p0}, Lzm5;->s(Z)V

    .line 4
    .line 5
    .line 6
    new-instance p0, Lhk5;

    .line 7
    .line 8
    invoke-interface {p2}, Lqn5;->getValue()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Lm61;->b(Ljava/lang/String;)Lm61;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    sget-object p2, Lqv2;->e:Lqv2;

    .line 19
    .line 20
    invoke-direct {p0, p1, p2}, Lhk5;-><init>(Lm61;Lqn5;)V

    .line 21
    .line 22
    .line 23
    return-object p0
.end method

.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lhk5;

    .line 2
    .line 3
    check-cast p2, Lhk5;

    .line 4
    .line 5
    iget-object p0, p1, Lhk5;->a:Lm61;

    .line 6
    .line 7
    iget-object p1, p2, Lhk5;->a:Lm61;

    .line 8
    .line 9
    invoke-virtual {p0, p1}, Lm61;->a(Lm61;)I

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    return p0
.end method

.method public final d()Lhk5;
    .locals 0

    .line 1
    sget-object p0, Lhk5;->d:Lhk5;

    .line 2
    .line 3
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lno4;

    .line 2
    .line 3
    return p0
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    const/16 p0, 0x25

    .line 2
    .line 3
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "KeyIndex"

    .line 2
    .line 3
    return-object p0
.end method
