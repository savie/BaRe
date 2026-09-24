.class public Lwt4$c;
.super Lwt4$b;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lwt4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "c"
.end annotation

.annotation runtime Lno6;
    name = "Expiration"
.end annotation


# instance fields
.field private c:Ljava/lang/Boolean;
    .annotation runtime Lat2;
        name = "ExpiredObjectDeleteMarker"
        required = false
    .end annotation
.end field

.field private d:Ljava/lang/Boolean;
    .annotation runtime Lat2;
        name = "ExpiredObjectAllVersions"
        required = false
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lh38$a;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3
    .param p1    # Lh38$a;
        .annotation runtime Lat2;
            name = "Date"
            required = false
        .end annotation
    .end param
    .param p2    # Ljava/lang/Integer;
        .annotation runtime Lat2;
            name = "Days"
            required = false
        .end annotation
    .end param
    .param p3    # Ljava/lang/Boolean;
        .annotation runtime Lat2;
            name = "ExpiredObjectDeleteMarker"
            required = false
        .end annotation
    .end param
    .param p4    # Ljava/lang/Boolean;
        .annotation runtime Lat2;
            name = "ExpiredObjectAllVersions"
            required = false
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Lwt4$b;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p3, :cond_1

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    if-nez p2, :cond_0

    .line 9
    .line 10
    goto :goto_1

    .line 11
    :cond_0
    const-string p0, "ExpiredObjectDeleteMarker must not be provided along with Date and Days"

    .line 12
    .line 13
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const/4 p0, 0x0

    .line 17
    throw p0

    .line 18
    :cond_1
    const/4 v0, 0x0

    .line 19
    const/4 v1, 0x1

    .line 20
    if-eqz p1, :cond_2

    .line 21
    .line 22
    move v2, v1

    .line 23
    goto :goto_0

    .line 24
    :cond_2
    move v2, v0

    .line 25
    :goto_0
    if-eqz p2, :cond_3

    .line 26
    .line 27
    move v0, v1

    .line 28
    :cond_3
    xor-int/2addr v0, v2

    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    iput-object p1, p0, Lwt4$b;->a:Lh38$a;

    .line 32
    .line 33
    iput-object p2, p0, Lwt4$b;->b:Ljava/lang/Integer;

    .line 34
    .line 35
    :goto_1
    iput-object p3, p0, Lwt4$c;->c:Ljava/lang/Boolean;

    .line 36
    .line 37
    iput-object p4, p0, Lwt4$c;->d:Ljava/lang/Boolean;

    .line 38
    .line 39
    return-void

    .line 40
    :cond_4
    const-string p0, "Only one of date or days must be set"

    .line 41
    .line 42
    invoke-static {p0}, Lc6;->f(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    throw p0
.end method

.method public constructor <init>(Ljava/time/ZonedDateTime;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 47
    :cond_0
    new-instance v0, Lh38$a;

    invoke-direct {v0, p1}, Lh38$a;-><init>(Ljava/time/ZonedDateTime;)V

    move-object p1, v0

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lwt4$c;-><init>(Lh38$a;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method


# virtual methods
.method public c()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lwt4$c;->d:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public d()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lwt4$c;->c:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    invoke-super {p0}, Lwt4$b;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lwt4$c;->c:Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-static {v1}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object p0, p0, Lwt4$c;->d:Ljava/lang/Boolean;

    .line 12
    .line 13
    invoke-static {p0}, Lki8;->e(Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    const-string v2, ", expiredObjectDeleteMarker="

    .line 18
    .line 19
    const-string v3, ", expiredObjectAllVersions="

    .line 20
    .line 21
    const-string v4, "Expiration{"

    .line 22
    .line 23
    invoke-static {v4, v0, v2, v1, v3}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    const-string v1, "}"

    .line 28
    .line 29
    invoke-static {v0, p0, v1}, Ldj7;->n(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    return-object p0
.end method
