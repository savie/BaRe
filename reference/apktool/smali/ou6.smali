.class public final Lou6;
.super Lrt6;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public e:Lfi7;


# virtual methods
.method public final h(Lzu6;)V
    .locals 2

    .line 1
    iget v0, p0, Lrt6;->c:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Low0;->k(I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lzu6;->v()V

    .line 7
    .line 8
    .line 9
    const/16 v0, 0x48

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Low0;->k(I)V

    .line 12
    .line 13
    .line 14
    iget-object p0, p0, Lou6;->e:Lfi7;

    .line 15
    .line 16
    invoke-virtual {p0}, Lfi7;->b()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    iget-object v0, p1, Low0;->b:Lvw2;

    .line 21
    .line 22
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    mul-int/lit8 v1, v1, 0x2

    .line 27
    .line 28
    invoke-virtual {v0, p1, v1}, Lvw2;->j(Low0;I)V

    .line 29
    .line 30
    .line 31
    sget-object v0, Lh51;->d:Ljava/nio/charset/Charset;

    .line 32
    .line 33
    invoke-virtual {p1, p0, v0}, Low0;->j(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method
