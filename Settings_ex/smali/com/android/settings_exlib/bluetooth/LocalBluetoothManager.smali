.class public final Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
.super Ljava/lang/Object;
.source "LocalBluetoothManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;


# instance fields
.field private final mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

.field private final mContext:Landroid/content/Context;

.field private final mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

.field private mForegroundActivity:Landroid/content/Context;

.field private final mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;


# direct methods
.method private constructor <init>(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V
    .locals 4
    .param p1, "adapter"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object p2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mContext:Landroid/content/Context;

    .line 69
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 71
    new-instance v0, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, p2, p0}, Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;)V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 72
    new-instance v0, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    .line 73
    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    .line 72
    invoke-direct {v0, v1, v2, p2}, Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;-><init>(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    .line 74
    new-instance v0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 75
    iget-object v1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    .line 74
    invoke-direct {v0, p2, v1, v2, v3}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;-><init>(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    .line 67
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "onInitCallback"    # Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    .prologue
    const/4 v4, 0x0

    const-class v3, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    monitor-enter v3

    .line 51
    :try_start_0
    sget-object v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    if-nez v2, :cond_1

    .line 52
    invoke-static {}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;->getInstance()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 53
    .local v0, "adapter":Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    if-nez v0, :cond_0

    monitor-exit v3

    .line 54
    return-object v4

    .line 57
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 58
    .local v1, "appContext":Landroid/content/Context;
    new-instance v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-direct {v2, v0, v1}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;-><init>(Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;Landroid/content/Context;)V

    sput-object v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    .line 59
    if-eqz p1, :cond_1

    .line 60
    sget-object v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;

    invoke-interface {p1, v1, v2}, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;->onBluetoothManagerInitialized(Landroid/content/Context;Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;)V

    .line 64
    .end local v0    # "adapter":Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .end local v1    # "appContext":Landroid/content/Context;
    :cond_1
    sget-object v2, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->sInstance:Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v3

    return-object v2

    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method


# virtual methods
.method public getBluetoothAdapter()Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settings_exlib/bluetooth/LocalBluetoothAdapter;

    return-object v0
.end method

.method public getCachedDeviceManager()Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mCachedDeviceManager:Lcom/android/settings_exlib/bluetooth/CachedBluetoothDeviceManager;

    return-object v0
.end method

.method public getEventManager()Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mEventManager:Lcom/android/settings_exlib/bluetooth/BluetoothEventManager;

    return-object v0
.end method

.method public getForegroundActivity()Landroid/content/Context;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    return-object v0
.end method

.method public getProfileManager()Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mProfileManager:Lcom/android/settings_exlib/bluetooth/LocalBluetoothProfileManager;

    return-object v0
.end method

.method public isForegroundActivity()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized setForegroundActivity(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    monitor-enter p0

    .line 95
    if-eqz p1, :cond_1

    .line 96
    :try_start_0
    const-string/jumbo v0, "LocalBluetoothManager"

    const-string/jumbo v1, "setting foreground activity to non-null context"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    iput-object p1, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit p0

    .line 94
    return-void

    .line 99
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 100
    const-string/jumbo v0, "LocalBluetoothManager"

    const-string/jumbo v1, "setting foreground activity to null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_exlib/bluetooth/LocalBluetoothManager;->mForegroundActivity:Landroid/content/Context;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method