.class public final enum Lb68;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "ScriptDataEscapeStartDash"

    .line 2
    .line 3
    const/16 v1, 0x14

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
    const/16 p0, 0x2d

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
    sget-object p0, Le88;->O:Le68;

    .line 13
    .line 14
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 15
    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    sget-object p0, Le88;->f:La88;

    .line 19
    .line 20
    iput-object p0, p1, Lo58;->c:Le88;

    .line 21
    .line 22
    return-void
.end method
