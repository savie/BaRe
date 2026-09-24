.class public final Lfb3;
.super Ljava/io/IOException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# direct methods
.method public constructor <init>(JLjava/lang/RuntimeException;)V
    .locals 1

    .line 1
    const-string v0, "Invalid Filen download response for chunk "

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-direct {p0, p1, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
