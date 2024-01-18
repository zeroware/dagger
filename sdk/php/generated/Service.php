<?php

/**
 * This class has been generated by dagger-php-sdk. DO NOT EDIT.
 */

declare(strict_types=1);

namespace Dagger;

/**
 * A content-addressed service providing TCP connectivity.
 */
class Service extends Client\AbstractObject implements Client\IdAble
{
    /**
     * Retrieves an endpoint that clients can use to reach this container.
     *
     * If no port is specified, the first exposed port is used. If none exist an error is returned.
     *
     * If a scheme is specified, a URL is returned. Otherwise, a host:port pair is returned.
     */
    public function endpoint(?int $port = null, ?string $scheme = ''): string
    {
        $leafQueryBuilder = new \Dagger\Client\QueryBuilder('endpoint');
        if (null !== $port) {
        $leafQueryBuilder->setArgument('port', $port);
        }
        if (null !== $scheme) {
        $leafQueryBuilder->setArgument('scheme', $scheme);
        }
        return (string)$this->queryLeaf($leafQueryBuilder, 'endpoint');
    }

    /**
     * Retrieves a hostname which can be used by clients to reach this container.
     */
    public function hostname(): string
    {
        $leafQueryBuilder = new \Dagger\Client\QueryBuilder('hostname');
        return (string)$this->queryLeaf($leafQueryBuilder, 'hostname');
    }

    /**
     * A unique identifier for this Service.
     */
    public function id(): ServiceId
    {
        $leafQueryBuilder = new \Dagger\Client\QueryBuilder('id');
        return new \Dagger\ServiceId((string)$this->queryLeaf($leafQueryBuilder, 'id'));
    }

    /**
     * Retrieves the list of ports provided by the service.
     */
    public function ports(): array
    {
        $leafQueryBuilder = new \Dagger\Client\QueryBuilder('ports');
        return (array)$this->queryLeaf($leafQueryBuilder, 'ports');
    }

    /**
     * Start the service and wait for its health checks to succeed.
     *
     * Services bound to a Container do not need to be manually started.
     */
    public function start(): ServiceId
    {
        $leafQueryBuilder = new \Dagger\Client\QueryBuilder('start');
        return new \Dagger\ServiceId((string)$this->queryLeaf($leafQueryBuilder, 'start'));
    }

    /**
     * Stop the service.
     */
    public function stop(): ServiceId
    {
        $leafQueryBuilder = new \Dagger\Client\QueryBuilder('stop');
        return new \Dagger\ServiceId((string)$this->queryLeaf($leafQueryBuilder, 'stop'));
    }
}
