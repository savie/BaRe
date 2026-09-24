.class public final enum Lu58;
.super Le88;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "RawtextEndTagOpen"

    .line 2
    .line 3
    const/16 v1, 0xe

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
    sget-object p0, Le88;->G:Lv58;

    .line 12
    .line 13
    iput-object p0, p1, Lo58;->c:Le88;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string p0, "</"

    .line 17
    .line 18
    invoke-virtual {p1, p0}, Lo58;->h(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Le88;->e:Lr78;

    .line 22
    .line 23
    iput-object p0, p1, Lo58;->c:Le88;

    .line 24
    .line 25
    return-void
.end method
