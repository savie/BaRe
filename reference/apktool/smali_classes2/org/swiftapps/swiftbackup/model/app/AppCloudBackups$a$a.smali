.class public final Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;
.super Ljava/lang/Object;
.source "r8-map-id-1bff7581625143effd57ac0798e0b9b336d7bf32101928a795c6093adf9a91d0"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private final appCloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

.field private final databaseError:Lwc2;


# direct methods
.method public constructor <init>(Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;Lwc2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->appCloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->databaseError:Lwc2;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getAppCloudBackups()Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->appCloudBackups:Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getDatabaseError()Lwc2;
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/swiftapps/swiftbackup/model/app/AppCloudBackups$a$a;->databaseError:Lwc2;

    .line 2
    .line 3
    return-object p0
.end method
