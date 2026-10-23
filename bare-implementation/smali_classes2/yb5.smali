.class public final Lyb5;
.super Lay8;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .locals 3

    .line 1
    const-string v0, " KiB of memory would be needed; limit was "

    .line 2
    .line 3
    const-string v1, " KiB"

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    invoke-static {v2, p1, v0, v1, p2}, Ldj7;->j(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    iput p1, p0, Lyb5;->a:I

    .line 15
    .line 16
    iput p2, p0, Lyb5;->b:I

    .line 17
    .line 18
    return-void
.end method
