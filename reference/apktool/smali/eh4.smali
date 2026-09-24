.class public final Leh4;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Lyy8;


# static fields
.field public static final a:Lnz8;

.field public static final b:Lnz8;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lnz8;

    .line 2
    .line 3
    const v1, 0xcafe

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Leh4;->a:Lnz8;

    .line 10
    .line 11
    new-instance v0, Lnz8;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1}, Lnz8;-><init>(I)V

    .line 15
    .line 16
    .line 17
    sput-object v0, Leh4;->b:Lnz8;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public final a()Lnz8;
    .locals 0

    .line 1
    sget-object p0, Leh4;->a:Lnz8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final b()Lnz8;
    .locals 0

    .line 1
    sget-object p0, Leh4;->b:Lnz8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final c([BII)V
    .locals 0

    .line 1
    if-nez p3, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/util/zip/ZipException;

    .line 5
    .line 6
    const-string p1, "JarMarker doesn\'t expect any data"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/util/zip/ZipException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public final d()[B
    .locals 0

    .line 1
    sget-object p0, Lwx3;->a:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final e()[B
    .locals 0

    .line 1
    sget-object p0, Lwx3;->a:[B

    .line 2
    .line 3
    return-object p0
.end method

.method public final f()Lnz8;
    .locals 0

    .line 1
    sget-object p0, Leh4;->b:Lnz8;

    .line 2
    .line 3
    return-object p0
.end method

.method public final h([BII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3}, Leh4;->c([BII)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
