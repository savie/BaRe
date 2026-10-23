.class public final enum Ln68;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "ScriptDataDoubleEscapedLessthanSign"

    .line 2
    .line 3
    const/16 v1, 0x1f

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
    .locals 0

    .line 1
    const/16 p0, 0x2f

    .line 2
    .line 3
    invoke-virtual {p2, p0}, Le51;->m(C)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    invoke-virtual {p1, p0}, Lo58;->f(C)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Lo58;->e()V

    .line 13
    .line 14
    .line 15
    sget-object p0, Le88;->X:Lo68;

    .line 16
    .line 17
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :cond_0
    sget-object p0, Le88;->T:Lj68;

    .line 22
    .line 23
    iput-object p0, p1, Lo58;->c:Le88;

    .line 24
    .line 25
    return-void
.end method
