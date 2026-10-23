.class public final Lvw8;
.super Lwv5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final d:Lnz8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    const/16 v1, 0x16

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lvw8;->d:Lnz8;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final h([BII)V
    .locals 1

    .line 1
    const/4 v0, 0x4

    .line 2
    invoke-virtual {p0, v0, p3}, Lwv5;->g(II)V

    .line 3
    .line 4
    .line 5
    const/4 p0, 0x2

    .line 6
    invoke-static {p1, p2, p0}, Lwx3;->j([BII)J

    .line 7
    .line 8
    .line 9
    add-int/2addr p2, p0

    .line 10
    invoke-static {p1, p2, p0}, Lwx3;->j([BII)J

    .line 11
    .line 12
    .line 13
    move-result-wide p0

    .line 14
    long-to-int p0, p0

    .line 15
    sget-object p1, Lvv5;->b:Ljava/util/Map;

    .line 16
    .line 17
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Lvv5;

    .line 26
    .line 27
    return-void
.end method
