.class final Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter;
.super Ljava/io/Writer;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nimbusds/jose/shaded/gson/internal/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppendableWriter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter$CurrentWrite;
    }
.end annotation


# instance fields
.field private final appendable:Ljava/lang/Appendable;

.field private final currentWrite:Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter$CurrentWrite;


# direct methods
.method public constructor <init>(Ljava/lang/Appendable;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter$CurrentWrite;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter$CurrentWrite;-><init>(Lcom/nimbusds/jose/shaded/gson/internal/Streams$1;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter;->currentWrite:Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter$CurrentWrite;

    .line 11
    .line 12
    iput-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 9
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    invoke-interface {v0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 7
    invoke-virtual {p0, p1, p2, p3}, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object p0

    return-object p0
.end method

.method public close()V
    .locals 0

    .line 1
    return-void
.end method

.method public flush()V
    .locals 0

    .line 1
    return-void
.end method

.method public write(I)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 15
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    int-to-char p1, p1

    invoke-interface {p0, p1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    add-int/2addr p3, p2

    invoke-interface {p0, p1, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    return-void
.end method

.method public write([CII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter;->currentWrite:Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter$CurrentWrite;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter$CurrentWrite;->setChars([C)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter;->appendable:Ljava/lang/Appendable;

    .line 7
    .line 8
    iget-object p0, p0, Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter;->currentWrite:Lcom/nimbusds/jose/shaded/gson/internal/Streams$AppendableWriter$CurrentWrite;

    .line 9
    .line 10
    add-int/2addr p3, p2

    .line 11
    invoke-interface {p1, p0, p2, p3}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;

    .line 12
    .line 13
    .line 14
    return-void
.end method
