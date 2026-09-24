.class public final Lfr2;
.super Ljava/io/IOException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:J


# direct methods
.method public constructor <init>(JLjava/lang/Exception;)V
    .locals 1

    .line 1
    const-string v0, "Dropbox upload session offset corrected to "

    .line 2
    .line 3
    invoke-static {p1, p2, v0}, Lu48;->l(JLjava/lang/String;)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0, p3}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 8
    .line 9
    .line 10
    iput-wide p1, p0, Lfr2;->a:J

    .line 11
    .line 12
    return-void
.end method
