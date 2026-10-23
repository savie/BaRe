.class public final Lei9;
.super Loe9;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final d:Ldi9;

.field public final e:Ld2a;

.field public final f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Ldi9;Ld2a;Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lei9;->d:Ldi9;

    .line 5
    .line 6
    iput-object p2, p0, Lei9;->e:Ld2a;

    .line 7
    .line 8
    iput-object p3, p0, Lei9;->f:Ljava/lang/Integer;

    .line 9
    .line 10
    return-void
.end method

.method public static K(Ldi9;Ljava/lang/Integer;)Lei9;
    .locals 3

    .line 1
    iget-object v0, p0, Ldi9;->a:Lci9;

    .line 2
    .line 3
    sget-object v1, Lci9;->d:Lci9;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-ne v0, v1, :cond_1

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    sget-object v0, Lzs9;->a:Ld2a;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const-string p0, "For given Variant NO_PREFIX the value of idRequirement must be null"

    .line 14
    .line 15
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    return-object v2

    .line 19
    :cond_1
    sget-object v1, Lci9;->c:Lci9;

    .line 20
    .line 21
    if-ne v0, v1, :cond_3

    .line 22
    .line 23
    if-eqz p1, :cond_2

    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    invoke-static {v0}, Lzs9;->b(I)Ld2a;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    :goto_0
    new-instance v1, Lei9;

    .line 34
    .line 35
    invoke-direct {v1, p0, v0, p1}, Lei9;-><init>(Ldi9;Ld2a;Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    return-object v1

    .line 39
    :cond_2
    const-string p0, "For given Variant TINK the value of idRequirement must be non-null"

    .line 40
    .line 41
    invoke-static {p0}, Lm0;->h(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    return-object v2

    .line 45
    :cond_3
    new-instance p0, Ljava/security/GeneralSecurityException;

    .line 46
    .line 47
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    const-string v0, "Unknown Variant: "

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-direct {p0, p1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    throw p0
.end method


# virtual methods
.method public final synthetic G()Lbd9;
    .locals 0

    .line 1
    iget-object p0, p0, Lei9;->d:Ldi9;

    .line 2
    .line 3
    return-object p0
.end method

.method public final H()Ljava/lang/Integer;
    .locals 0

    .line 1
    iget-object p0, p0, Lei9;->f:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object p0
.end method

.method public final J()Ld2a;
    .locals 0

    .line 1
    iget-object p0, p0, Lei9;->e:Ld2a;

    .line 2
    .line 3
    return-object p0
.end method
