.class public final enum Lfd8;
.super Ljava/lang/Enum;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# static fields
.field public static final enum b:Lfd8;

.field public static final enum c:Lfd8;

.field public static final synthetic d:[Lfd8;


# instance fields
.field public final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lfd8;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-string v2, "http"

    .line 5
    .line 6
    const-string v3, "HTTP"

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Lfd8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lfd8;->b:Lfd8;

    .line 12
    .line 13
    new-instance v1, Lfd8;

    .line 14
    .line 15
    const/4 v2, 0x1

    .line 16
    const-string v3, "https"

    .line 17
    .line 18
    const-string v4, "HTTPS"

    .line 19
    .line 20
    invoke-direct {v1, v4, v2, v3}, Lfd8;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sput-object v1, Lfd8;->c:Lfd8;

    .line 24
    .line 25
    filled-new-array {v0, v1}, [Lfd8;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    sput-object v0, Lfd8;->d:[Lfd8;

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    invoke-static {p3}, Ljm1;->A(Ljava/lang/CharSequence;)Z

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    iput-object p3, p0, Lfd8;->a:Ljava/lang/String;

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    const-string p0, "id must not be blank"

    .line 14
    .line 15
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    const/4 p0, 0x0

    .line 19
    throw p0
.end method

.method public static valueOf(Ljava/lang/String;)Lfd8;
    .locals 1

    .line 1
    const-class v0, Lfd8;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lfd8;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lfd8;
    .locals 1

    .line 1
    sget-object v0, Lfd8;->d:[Lfd8;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lfd8;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lfd8;

    .line 8
    .line 9
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lfd8;->a:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
