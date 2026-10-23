.class public abstract Lq3;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Le84;
.implements Ljava/nio/file/FileVisitor;


# instance fields
.field public final a:Ljava/nio/file/FileVisitResult;

.field public final b:Ljava/nio/file/FileVisitResult;


# direct methods
.method public constructor <init>(Ljava/nio/file/FileVisitResult;Ljava/nio/file/FileVisitResult;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lq3;->a:Ljava/nio/file/FileVisitResult;

    .line 5
    .line 6
    iput-object p2, p0, Lq3;->b:Ljava/nio/file/FileVisitResult;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 1
    const-string p0, "name"

    .line 2
    .line 3
    invoke-static {p2, p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    new-instance p0, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-static {p0}, Ljava/nio/file/Files;->isSymbolicLink(Ljava/nio/file/Path;)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    return p0
.end method

.method public final postVisitDirectory(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 4
    .line 5
    return-object p0
.end method

.method public final preVisitDirectory(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    check-cast p0, Liu7;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Liu7;->a(Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final visitFile(Ljava/lang/Object;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    check-cast p0, Liu7;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Liu7;->a(Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    return-object p0
.end method

.method public final visitFileFailed(Ljava/lang/Object;Ljava/io/IOException;)Ljava/nio/file/FileVisitResult;
    .locals 0

    .line 1
    check-cast p1, Ljava/nio/file/Path;

    .line 2
    .line 3
    sget-object p0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    .line 4
    .line 5
    return-object p0
.end method
