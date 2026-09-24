.class public Ldy2;
.super Lrg5;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Lcy2;

.field public final b:Lokhttp3/Response;


# direct methods
.method public constructor <init>(Lcy2;Lokhttp3/Response;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcy2;->d()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-direct {p0, v0, p3}, Lrg5;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Ldy2;->a:Lcy2;

    .line 9
    .line 10
    iput-object p2, p0, Ldy2;->b:Lokhttp3/Response;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    iget-object v0, p0, Ldy2;->a:Lcy2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcy2;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object p0, p0, Ldy2;->b:Lokhttp3/Response;

    .line 8
    .line 9
    iget-object v1, p0, Lokhttp3/Response;->a:Lokhttp3/Request;

    .line 10
    .line 11
    iget-object v2, v1, Lokhttp3/Request;->b:Ljava/lang/String;

    .line 12
    .line 13
    iget-object v3, v1, Lokhttp3/Request;->a:Lokhttp3/HttpUrl;

    .line 14
    .line 15
    iget-object v1, v1, Lokhttp3/Request;->c:Lokhttp3/Headers;

    .line 16
    .line 17
    invoke-virtual {v1}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v4, "Signature=([0-9a-f]+)"

    .line 22
    .line 23
    const-string v5, "Signature=*REDACTED*"

    .line 24
    .line 25
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    const-string v4, "Credential=([^/]+)"

    .line 30
    .line 31
    const-string v5, "Credential=*REDACTED*"

    .line 32
    .line 33
    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget v4, p0, Lokhttp3/Response;->d:I

    .line 38
    .line 39
    iget-object p0, p0, Lokhttp3/Response;->f:Lokhttp3/Headers;

    .line 40
    .line 41
    invoke-virtual {p0}, Lokhttp3/Headers;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    const-string v5, ", request={method="

    .line 46
    .line 47
    const-string v6, ", url="

    .line 48
    .line 49
    const-string v7, "S3 operation failed; ErrorResponseException{errorResponse="

    .line 50
    .line 51
    invoke-static {v7, v0, v5, v2, v6}, Lu48;->p(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    const-string v2, ", headers="

    .line 59
    .line 60
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, "}, response={code="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string p0, "}}"

    .line 81
    .line 82
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p0

    .line 89
    return-object p0
.end method
