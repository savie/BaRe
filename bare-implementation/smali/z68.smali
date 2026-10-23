.class public final enum Lz68;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "BogusComment"

    .line 2
    .line 3
    const/16 v1, 0x2a

    .line 4
    .line 5
    invoke-direct {p0, v0, v1}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final d(Lo58;Le51;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Le51;->q()V

    .line 2
    .line 3
    .line 4
    new-instance p0, Lx48;

    .line 5
    .line 6
    invoke-direct {p0}, Lx48;-><init>()V

    .line 7
    .line 8
    .line 9
    const/16 v0, 0x3e

    .line 10
    .line 11
    invoke-virtual {p2, v0}, Le51;->f(C)Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    iget-object v0, p0, Lx48;->c:Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p0}, Lo58;->g(Lqb6;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Le88;->a:Lz58;

    .line 24
    .line 25
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method
