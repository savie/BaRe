.class public final enum Lr58;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "RCDATAEndTagOpen"

    .line 2
    .line 3
    const/16 v1, 0xb

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
    invoke-virtual {p2}, Le51;->o()Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    invoke-virtual {p1, p0}, Lo58;->d(Z)Lc58;

    .line 9
    .line 10
    .line 11
    iget-object p0, p1, Lo58;->i:Lc58;

    .line 12
    .line 13
    invoke-virtual {p2}, Le51;->i()C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Lc58;->m(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object p0, p1, Lo58;->h:Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-virtual {p2}, Le51;->i()C

    .line 30
    .line 31
    .line 32
    move-result p2

    .line 33
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    sget-object p0, Le88;->t:Ls58;

    .line 37
    .line 38
    invoke-virtual {p1, p0}, Lo58;->a(Le88;)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_0
    const-string p0, "</"

    .line 43
    .line 44
    invoke-virtual {p1, p0}, Lo58;->h(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    sget-object p0, Le88;->c:Lv68;

    .line 48
    .line 49
    iput-object p0, p1, Lo58;->c:Le88;

    .line 50
    .line 51
    return-void
.end method
