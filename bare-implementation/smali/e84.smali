.class public interface abstract Le84;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/io/FileFilter;
.implements Ljava/io/FilenameFilter;
.implements Ljava/nio/file/PathMatcher;


# virtual methods
.method public abstract a(Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;
.end method

.method public matches(Ljava/nio/file/Path;)Z
    .locals 0

    .line 1
    invoke-interface {p0, p1}, Le84;->a(Ljava/nio/file/Path;)Ljava/nio/file/FileVisitResult;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object p1, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    .line 6
    .line 7
    if-eq p0, p1, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0
.end method
