.class public final Lvq6;
.super Ljava/io/IOException;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 0

    .line 1
    const/4 p1, 0x0

    .line 2
    invoke-direct {p0, p4, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    .line 4
    .line 5
    iput-object p2, p0, Lvq6;->a:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p3, p0, Lvq6;->b:Ljava/util/List;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/net/UnknownHostException;)V
    .locals 0

    .line 10
    invoke-direct {p0, p4, p5}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    iput-object p2, p0, Lvq6;->a:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lvq6;->b:Ljava/util/List;

    return-void
.end method
