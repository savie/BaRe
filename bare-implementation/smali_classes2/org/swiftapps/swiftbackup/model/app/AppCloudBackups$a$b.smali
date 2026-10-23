.class public final Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$b;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;->fromSnapshot(Leb2;)Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")I"
        }
    .end annotation

    .line 1
    check-cast p2, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 2
    .line 3
    invoke-virtual {p2}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getDateBackedUpOrUpdated()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p1, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;

    .line 12
    .line 13
    invoke-virtual {p1}, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackup;->getDateBackedUpOrUpdated()J

    .line 14
    .line 15
    .line 16
    move-result-wide p1

    .line 17
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-static {p0, p1}, Lms8;->n(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    .line 22
    .line 23
    .line 24
    move-result p0

    .line 25
    return p0
.end method
