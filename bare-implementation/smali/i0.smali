.class public final Li0;
.super Ljava/io/IOException;


# instance fields
.field public final a:Ljava/lang/RuntimeException;


# direct methods
.method public constructor <init>(Ljava/lang/RuntimeException;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Li0;->a:Ljava/lang/RuntimeException;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getCause()Ljava/lang/Throwable;
    .locals 0

    .line 1
    iget-object p0, p0, Li0;->a:Ljava/lang/RuntimeException;

    .line 2
    .line 3
    return-object p0
.end method
