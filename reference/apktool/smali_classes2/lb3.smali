.class public final Llb3;
.super Ljava/io/IOException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:I


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "Filen API HTTP "

    .line 2
    .line 3
    const-string v1, " for "

    .line 4
    .line 5
    invoke-static {p1, v0, v1, p2}, Lu48;->k(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iput p1, p0, Llb3;->a:I

    .line 13
    .line 14
    return-void
.end method
